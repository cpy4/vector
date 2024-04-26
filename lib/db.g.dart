// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$secretHash() => r'5d4057ee9661daefb6e6c5d1943e65a5bf9eb0a4';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [secret].
@ProviderFor(secret)
const secretProvider = SecretFamily();

/// See also [secret].
class SecretFamily extends Family<AsyncValue> {
  /// See also [secret].
  const SecretFamily();

  /// See also [secret].
  SecretProvider call(
    dynamic ref,
  ) {
    return SecretProvider(
      ref,
    );
  }

  @override
  SecretProvider getProviderOverride(
    covariant SecretProvider provider,
  ) {
    return call(
      provider.ref,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'secretProvider';
}

/// See also [secret].
class SecretProvider extends AutoDisposeFutureProvider<Object?> {
  /// See also [secret].
  SecretProvider(
    dynamic ref,
  ) : this._internal(
          (ref) => secret(
            ref as SecretRef,
            ref,
          ),
          from: secretProvider,
          name: r'secretProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$secretHash,
          dependencies: SecretFamily._dependencies,
          allTransitiveDependencies: SecretFamily._allTransitiveDependencies,
          ref: ref,
        );

  SecretProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ref,
  }) : super.internal();

  final dynamic ref;

  @override
  Override overrideWith(
    FutureOr<Object?> Function(SecretRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SecretProvider._internal(
        (ref) => create(ref as SecretRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ref: ref,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Object?> createElement() {
    return _SecretProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SecretProvider && other.ref == ref;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ref.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SecretRef on AutoDisposeFutureProviderRef<Object?> {
  /// The parameter `ref` of this provider.
  dynamic get ref;
}

class _SecretProviderElement extends AutoDisposeFutureProviderElement<Object?>
    with SecretRef {
  _SecretProviderElement(super.provider);

  @override
  dynamic get ref => (origin as SecretProvider).ref;
}

String _$docsHash() => r'2eb5eb7c7c3c0e42ca68998c491628111cc08dd6';

/// See also [docs].
@ProviderFor(docs)
final docsProvider = AutoDisposeFutureProvider<List>.internal(
  docs,
  name: r'docsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$docsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DocsRef = AutoDisposeFutureProviderRef<List>;
String _$supabaseCredsHash() => r'1f50fd0e770f14ba73f8c87aa17b334a188c2a9b';

/// See also [supabaseCreds].
@ProviderFor(supabaseCreds)
final supabaseCredsProvider = AutoDisposeFutureProvider<String>.internal(
  supabaseCreds,
  name: r'supabaseCredsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$supabaseCredsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SupabaseCredsRef = AutoDisposeFutureProviderRef<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
