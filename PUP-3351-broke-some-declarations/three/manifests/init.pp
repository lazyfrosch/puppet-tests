class three(
    $message = 'default'
) {
    notice("Class three: ${message}")

    class { 'two':
        message => 'from three!',
    }
}
