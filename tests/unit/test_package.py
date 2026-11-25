def test_package_can_be_imported() -> None:
    import machina

    assert machina.__name__ == "machina"
