#Permite realizar autenticacion con twitter
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'PJJQ12i8k4CWQtLC7E0Ocw', 'WQLa6KCGgyv9zHyIrGhfN1iYrn3c8A6bRMTXRQ5lM'
end
