const { contextBridge, ipcRenderer } = require('electron');

// Exponer API segura a la aplicación web
contextBridge.exposeInMainWorld('electron', {
  // Métodos IPC si los necesitas
  send: (channel, data) => {
    ipcRenderer.send(channel, data);
  },
  on: (channel, func) => {
    ipcRenderer.on(channel, (event, ...args) => func(...args));
  },
  invoke: (channel, data) => {
    return ipcRenderer.invoke(channel, data);
  },
  // Puedes agregar más métodos según necesites
});
