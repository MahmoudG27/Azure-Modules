# AKS ID
output "AKS-id" {
  value = azurerm_kubernetes_cluster.MG-aks.id
}

# AKS Identity id
output "AKS-identity-id" {
  value = azurerm_kubernetes_cluster.MG-aks.kubelet_identity[0].object_id
}