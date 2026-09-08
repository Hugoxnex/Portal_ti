$ErrorActionPreference = 'Stop'

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
[System.Windows.Forms.Application]::EnableVisualStyles()

$apps = @(
    [pscustomobject]@{ Name = 'Atualizador Shop9 Franquia'; Desc = 'Atualizador Franquias'; Path = '\\luxgroup.net\spo\SOFTWARES LUX\Programas para Notebooks e Desktops\SHOP CONTROL\ATUALIZADORES\atualizador Franquias.bat' }
    [pscustomobject]@{ Name = 'Atualizador Shop9 Lojas Proprias'; Desc = 'Atualizador Lojas Proprias'; Path = '\\luxgroup.net\spo\SOFTWARES LUX\Programas para Notebooks e Desktops\SHOP CONTROL\ATUALIZADORES\atualizador Lojas Proprias.bat' }
    [pscustomobject]@{ Name = 'Instalador Shop9'; Desc = 'Instalador Shop9'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Intall Shop9\Shop9.bat' }
    [pscustomobject]@{ Name = 'SAPGUI MAPEAMENTO PASTA'; Desc = 'SAP2'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\SAP2-0.exe' }
    [pscustomobject]@{ Name = 'Dynamics'; Desc = 'Dynamics'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Call\Dynamics.bat' }
    [pscustomobject]@{ Name = 'Aplicacoes Padrao'; Desc = 'Aplicacoes padrao'; Path = '\\luxgroup.net\sme\LOGISTICA\Nova pasta\LiteTouch w11 - Atalho - Copia.lnk' }
    [pscustomobject]@{ Name = 'Informacoes de Maquina inventario'; Desc = 'Informacoes de Maquina'; Path = '\\luxgroup.net\sme\LOGISTICA\Nova pasta (2)\executa_inventario2,0 - Atalho.lnk' }
    [pscustomobject]@{ Name = 'Atualizar e Ajuste Navegadores'; Desc = 'Ajuste Navegador'; Path = '\\Luxgroup.net\sme\LOGISTICA\TI\script\Call\Verificador-Navegador.bat' }
    [pscustomobject]@{ Name = 'Genesys Aplicação area te trabalho'; Desc = 'Genesys'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Call\Gene.bat' }
    [pscustomobject]@{ Name = 'Mapeamento Pasta SME'; Desc = 'Mapeamento Pasta SME'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Mapeamento-SME.bat' }
    [pscustomobject]@{ Name = 'Otimizacao Maquina'; Desc = 'Otimizacao Maquina'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\otimizar.bat' }
    [pscustomobject]@{ Name = 'SAP Reset'; Desc = 'SAP Reset'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\reset senha\SAP_RESET\Sap-reset.bat' }
    [pscustomobject]@{ Name = 'Redefinir Senha rede Essilor Conta essilor.id'; Desc = 'Para conta apenas com essilorluxottica.id'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\reset senha\RESET_AD\reset-ad-id.bat' }
    [pscustomobject]@{ Name = 'Redefinir Senha rede luxottica'; Desc = 'Para conta luxottica'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\reset senha\RESET_AD\reset-ad.bat' }
    [pscustomobject]@{ Name = 'Portal Impressoras'; Desc = 'Portal Impressoras'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\instalar_impressoras_gui.exe' }
    [pscustomobject]@{ Name = 'Configurar VPN'; Desc = 'Configurar VPN'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\GlobalProtect\ConfigurarVPN.bat' }
    [pscustomobject]@{ Name = 'Instalador VPN'; Desc = 'Instalador VPN'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\VPN\GlobalProtect64 (2).msi' }
    [pscustomobject]@{ Name = 'Ajuste Dynamics\Genesys\Mypersonal'; Desc = 'MyPersonalDesk'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\mypersonaldesk.bat' }
    [pscustomobject]@{ Name = 'Java ajuste Site Oracle'; Desc = 'instrucoes_configurar_java'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\java\configura_java\instrucoes_configurar_java.html' }
    [pscustomobject]@{ Name = 'Adobe Application'; Desc = 'Adobe'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Adobe Acrobat Reader Free Latest\AcroRdrDC2400520320_pt_BR.exe' }
    [pscustomobject]@{ Name = 'FileZilla Application'; Desc = 'FileZilla'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\FileZilla\FileZilla_3.67.1_win64-setup.exe' }
    [pscustomobject]@{ Name = 'Mozilla Firefox'; Desc = 'Mozilla'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Mozilla Firefox 52.0.2 Esr x86\Firefox Setup 52.0.2esr.exe' }
    [pscustomobject]@{ Name = 'Office 365 Application'; Desc = 'Office 365'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\office365\OfficeSetup (1).exe' }
    [pscustomobject]@{ Name = 'Oracle Java Application'; Desc = 'Oracle Java'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Oracle Java 8 Update 421\jre-8u421-windows-i586.exe' }
    [pscustomobject]@{ Name = 'PowerBIDesktop'; Desc = 'PBIDesktop'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\PBIDesktop\PBIDesktopSetup_x64.exe' }
    [pscustomobject]@{ Name = 'SAPGUI 8.00 Application'; Desc = 'SAPGUI 8.00'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Sap\SAPGUI_8.00_1.0_20240625_1149.exe' }
    [pscustomobject]@{ Name = 'Zebra Designer Application'; Desc = 'Zebra Designer'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Zebra Designer 3 3.2.2\zebradesigner3-322649.exe' }
    [pscustomobject]@{ Name = 'Zebra Utilities Application'; Desc = 'Zebra Utilities'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Zebra Setup Utilities 1.1.9.1325\zsu-1191325.exe' }
    [pscustomobject]@{ Name = 'Think'; Desc = 'Think'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\ThinkCell\setup_think-cell_35834.exe' }
    [pscustomobject]@{ Name = 'iTunes'; Desc = 'iTunes'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Apple Itunes\iTunes64.msi' }
    [pscustomobject]@{ Name = 'Citrix'; Desc = 'Citrix'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\CitrixWorkspace\CitrixWorkspaceApp.exe' }
    [pscustomobject]@{ Name = 'Office 2016'; Desc = 'Office 2016'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Microsoft Office 2016\setup.exe' }
    [pscustomobject]@{ Name = 'SmartView'; Desc = 'SmartView'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Hyperion Smart View 11.1.2.5.6\SmartView.exe' }
    [pscustomobject]@{ Name = 'KNIME'; Desc = 'KNIME'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Knime Analytics Platform 5.2\KNIME 5.8.0 Installer (64bit).exe' }
    [pscustomobject]@{ Name = 'Patch Cleaner'; Desc = 'Patch Cleaner'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Patch Cleaner\PatchCleaner_1.4.2.0.exe' }
    [pscustomobject]@{ Name = 'WinDirStat'; Desc = 'WinDirStat'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\WinDirStat\WinDirStat-x64.msi' }
    [pscustomobject]@{ Name = 'Certificado Shop9'; Desc = 'Certificado Shop9'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\certi\Cerificado.ps1' }
    [pscustomobject]@{ Name = 'ScreenConnect'; Desc = 'ScreenConnect'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\ConnectWise ScreenConnect\ScreenConnect.ClientSetup LUXOTTICA BR.exe' }
    [pscustomobject]@{ Name = 'Microsoft Edge'; Desc = 'MicrosoftEdge'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Edge\MicrosoftEdgeSetup.exe' }
    [pscustomobject]@{ Name = 'Chrome'; Desc = 'Chrome'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Chorme\ChromeSetup.exe' }
    [pscustomobject]@{ Name = 'Lightshot Captura tela'; Desc = 'Lightshot'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Lightshot\setup-lightshot (1).exe' }
    [pscustomobject]@{ Name = 'Pesquisa tudo PC'; Desc = 'Pesquisa tudo PC'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Pesquisa\Everything-1.4.1.1032.x86-Setup.exe' }
    [pscustomobject]@{ Name = 'VIP Correios'; Desc = 'VIP Correios'; Path = '\\luxgroup.net\sme\LOGISTICA\TI\script\Apli\Pesquisa\Everything-1.4.1.1032.x86-Setup.exe' }
)

$apps = $apps | Sort-Object -Property Name

function Invoke-AppPath {
    param([string]$Path)

    try {
        if ([string]::IsNullOrWhiteSpace($Path)) { throw 'Caminho vazio.' }
        if (-not (Test-Path -LiteralPath $Path)) { throw "Caminho nao encontrado: $Path" }

        $ext = [System.IO.Path]::GetExtension($Path).ToLowerInvariant()
        if ($ext -eq '.bat' -or $ext -eq '.cmd') {
            $command = '"{0}"' -f $Path
            Start-Process -FilePath 'cmd.exe' -ArgumentList '/d', '/s', '/c', $command -Wait
        }
        elseif ($ext -eq '.ps1') {
            Start-Process -FilePath 'powershell.exe' -ArgumentList '-NoProfile', '-ExecutionPolicy', 'Bypass', '-File', $Path
        }
        else {
            Start-Process -FilePath $Path
        }
    }
    catch {
        [System.Windows.Forms.MessageBox]::Show("Falha ao executar:`n`n$Path`n`n$($_.Exception.Message)", 'Erro', [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error) | Out-Null
    }
}

function Invoke-AppButtonClick {
    param([System.Windows.Forms.Control]$SourceControl)
    if ($null -ne $SourceControl -and $null -ne $SourceControl.Tag) {
        Invoke-AppPath -Path ([string]$SourceControl.Tag)
    }
}

$cBg = [System.Drawing.ColorTranslator]::FromHtml('#11152e')
$cCard = [System.Drawing.ColorTranslator]::FromHtml('#1a2044')
$cAccent = [System.Drawing.ColorTranslator]::FromHtml('#39b8ff')
$cBtn = [System.Drawing.ColorTranslator]::FromHtml('#2a95e8')
$cWhite = [System.Drawing.Color]::White
$cMuted = [System.Drawing.ColorTranslator]::FromHtml('#a0a0c0')
$cSearch = [System.Drawing.ColorTranslator]::FromHtml('#20295a')

$form = New-Object System.Windows.Forms.Form
$form.Text = 'Portal de Acessos'
$form.Size = [System.Drawing.Size]::new(1450, 760)
$form.MinimumSize = [System.Drawing.Size]::new(900, 600)
$form.BackColor = $cBg
$form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$form.AutoScroll = $false

function Update-CardsGridLayout {
    param([System.Windows.Forms.FlowLayoutPanel]$FlowPanel)

    $slotWidth = 220
    $rightPad = 10
    $baseLeft = 20
    $availableWidth = [Math]::Max(1, $FlowPanel.ClientSize.Width - $rightPad)
    $columns = [Math]::Max(1, [int][Math]::Floor($availableWidth / $slotWidth))
    $usedWidth = $columns * $slotWidth
    $leftPad = [int][Math]::Max($baseLeft, [Math]::Floor(($availableWidth - $usedWidth) / 2) + $baseLeft)
    $FlowPanel.Padding = New-Object System.Windows.Forms.Padding($leftPad, 20, $rightPad, 20)
}

$headerPanel = New-Object System.Windows.Forms.Panel
$headerPanel.Dock = [System.Windows.Forms.DockStyle]::Top
$headerPanel.Height = 90
$headerPanel.BackColor = [System.Drawing.ColorTranslator]::FromHtml('#151b3d')

$lblTitle = New-Object System.Windows.Forms.Label
$lblTitle.Text = 'PORTAL DE ACESSOS'
$lblTitle.ForeColor = $cAccent
$lblTitle.Font = New-Object System.Drawing.Font('Segoe UI', 22, [System.Drawing.FontStyle]::Bold)
$lblTitle.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$lblTitle.Dock = [System.Windows.Forms.DockStyle]::Fill
$headerPanel.Controls.Add($lblTitle)

$lblSub = New-Object System.Windows.Forms.Label
$lblSub.Text = 'Atalhos rapidos para os sistemas da operacao'
$lblSub.ForeColor = $cMuted
$lblSub.Font = New-Object System.Drawing.Font('Segoe UI', 9)
$lblSub.TextAlign = [System.Drawing.ContentAlignment]::BottomCenter
$lblSub.Dock = [System.Windows.Forms.DockStyle]::Bottom
$lblSub.Height = 24
$headerPanel.Controls.Add($lblSub)

$searchPanel = New-Object System.Windows.Forms.Panel
$searchPanel.Dock = [System.Windows.Forms.DockStyle]::Top
$searchPanel.Height = 56
$searchPanel.BackColor = [System.Drawing.ColorTranslator]::FromHtml('#171f46')

$lblSearchIcon = New-Object System.Windows.Forms.Label
$lblSearchIcon.Text = [System.Char]::ConvertFromUtf32(0x1F50D)
$lblSearchIcon.ForeColor = $cAccent
$lblSearchIcon.Font = New-Object System.Drawing.Font('Segoe UI Emoji', 14, [System.Drawing.FontStyle]::Regular)
$lblSearchIcon.AutoSize = $true
$lblSearchIcon.Location = [System.Drawing.Point]::new(24, 15)
$searchPanel.Controls.Add($lblSearchIcon)

$txtSearch = New-Object System.Windows.Forms.TextBox
$txtSearch.Width = 460
$txtSearch.Height = 30
$txtSearch.Location = [System.Drawing.Point]::new(56, 14)
$txtSearch.Font = New-Object System.Drawing.Font('Segoe UI', 10)
$txtSearch.BackColor = $cSearch
$txtSearch.ForeColor = $cWhite
$txtSearch.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$searchPanel.Controls.Add($txtSearch)

$lblSearchHint = New-Object System.Windows.Forms.Label
$lblSearchHint.Text = 'Digite para localizar aplicacoes e servicos'
$lblSearchHint.ForeColor = $cMuted
$lblSearchHint.Font = New-Object System.Drawing.Font('Segoe UI', 9)
$lblSearchHint.AutoSize = $true
$lblSearchHint.Location = [System.Drawing.Point]::new(530, 18)
$searchPanel.Controls.Add($lblSearchHint)

$flow = New-Object System.Windows.Forms.FlowLayoutPanel
$flow.Dock = [System.Windows.Forms.DockStyle]::Fill
$flow.BackColor = $cBg
$flow.AutoScroll = $true
$flow.WrapContents = $true
$flow.FlowDirection = [System.Windows.Forms.FlowDirection]::LeftToRight
$flow.HorizontalScroll.Enabled = $false
$flow.HorizontalScroll.Visible = $false
$flow.Padding = New-Object System.Windows.Forms.Padding(20, 20, 10, 20)
$form.Controls.Add($flow)
$form.Controls.Add($searchPanel)
$form.Controls.Add($headerPanel)

$sharedClickHandler = {
    param($sourceControl, $eventData)
    Invoke-AppButtonClick -SourceControl $sourceControl
}

$nameFont = New-Object System.Drawing.Font('Segoe UI', 11, [System.Drawing.FontStyle]::Bold)
$btnFont = New-Object System.Drawing.Font('Segoe UI', 9, [System.Drawing.FontStyle]::Bold)
$measureBitmap = New-Object System.Drawing.Bitmap(1, 1)
$measureGraphics = [System.Drawing.Graphics]::FromImage($measureBitmap)

$nameWidth = 180
$nameY = 50
$maxNameHeight = 36
$cardEntries = @()

foreach ($app in $apps) {
    $nameHeightMeasured = [int][Math]::Ceiling($measureGraphics.MeasureString($app.Name, $nameFont, $nameWidth).Height)
    $nameHeight = [Math]::Max(36, [Math]::Min(90, $nameHeightMeasured + 6))
    if ($nameHeight -gt $maxNameHeight) {
        $maxNameHeight = $nameHeight
    }
}

$buttonY = $nameY + $maxNameHeight + 10
$cardHeight = $buttonY + 28 + 12

foreach ($app in $apps) {
    $card = New-Object System.Windows.Forms.Panel
    $card.Size = [System.Drawing.Size]::new(200, $cardHeight)
    $card.Margin = New-Object System.Windows.Forms.Padding(10)
    $card.BackColor = $cCard

    $lblNum = New-Object System.Windows.Forms.Label
    $lblNum.Text = '00'
    $lblNum.ForeColor = $cAccent
    $lblNum.Font = New-Object System.Drawing.Font('Segoe UI', 20, [System.Drawing.FontStyle]::Bold)
    $lblNum.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
    $lblNum.Size = [System.Drawing.Size]::new(200, 42)
    $lblNum.Location = [System.Drawing.Point]::new(0, 6)

    $lblName = New-Object System.Windows.Forms.Label
    $lblName.Text = $app.Name
    $lblName.ForeColor = $cWhite
    $lblName.Font = $nameFont
    $lblName.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
    $lblName.Size = [System.Drawing.Size]::new($nameWidth, $maxNameHeight)
    $lblName.Location = [System.Drawing.Point]::new(10, $nameY)
    $lblName.AutoEllipsis = $true

    $btn = New-Object System.Windows.Forms.Button
    $btn.Text = 'EXECUTAR'
    $btn.BackColor = $cBtn
    $btn.ForeColor = $cWhite
    $btn.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn.FlatAppearance.BorderSize = 0
    $btn.Font = $btnFont
    $btn.Size = [System.Drawing.Size]::new(160, 28)
    $btn.Location = [System.Drawing.Point]::new(20, $buttonY)
    $btn.Cursor = [System.Windows.Forms.Cursors]::Hand
    $btn.Tag = $app.Path
    $btn.Add_Click($sharedClickHandler)

    $card.Controls.AddRange(@($lblNum, $lblName, $btn))
    $flow.Controls.Add($card)

    $cardEntries += [PSCustomObject]@{
        Card = $card
        Number = $lblNum
        Name = [string]$app.Name
        Desc = [string]$app.Desc
        IsVisibleByFilter = $true
    }
}

function Update-VisibleCardNumbers {
    param([object[]]$Entries)

    $index = 0
    foreach ($entry in $Entries) {
        if ($entry.IsVisibleByFilter) {
            $index++
            $entry.Number.Text = if ($index -lt 10) { "0$index" } else { "$index" }
        }
    }
}

function Apply-AppFilter {
    param(
        [object[]]$Entries,
        [string]$SearchText
    )

    $term = if ($null -eq $SearchText) { '' } else { $SearchText.Trim().ToLower() }
    foreach ($entry in $Entries) {
        $fullText = ("{0} {1}" -f $entry.Name, $entry.Desc).ToLower()
        $entry.IsVisibleByFilter = [string]::IsNullOrWhiteSpace($term) -or $fullText.Contains($term)
        $entry.Card.Visible = $entry.IsVisibleByFilter
    }

    Update-VisibleCardNumbers -Entries $Entries
}

$measureGraphics.Dispose()
$measureBitmap.Dispose()

$layoutRefreshHandler = {
    param($layoutSource, $layoutEvent)
    Update-CardsGridLayout -FlowPanel $flow
}

$flow.Add_SizeChanged($layoutRefreshHandler)
$form.Add_Shown({
    $layoutRefreshHandler.Invoke($null, [System.EventArgs]::Empty)
    Apply-AppFilter -Entries $cardEntries -SearchText $txtSearch.Text
})

$txtSearch.Add_TextChanged({
    Apply-AppFilter -Entries $cardEntries -SearchText $txtSearch.Text
})

try {
    Apply-AppFilter -Entries $cardEntries -SearchText ''
    [System.Windows.Forms.Application]::Run($form)
}
catch {
    $msg = "Erro ao iniciar o Portal de Acessos:`n`n$($_.Exception.Message)"
    [System.Windows.Forms.MessageBox]::Show($msg, 'Erro de inicializacao', [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error) | Out-Null
    throw
}
