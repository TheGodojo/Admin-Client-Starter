extends VBoxContainer

var multiplayer_peer = ENetMultiplayerPeer.new()

func _on_join_pressed():
	multiplayer_peer.create_client(
		$Menu/AddressInput.text,
		$Menu/PortInput.text.to_int(),
	)
	multiplayer.multiplayer_peer = multiplayer_peer
	$Menu.visible = false
