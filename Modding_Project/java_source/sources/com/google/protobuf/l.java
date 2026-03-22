package com.google.protobuf;
/* compiled from: ExtensionSchemas.java */
/* loaded from: classes5.dex */
final class l {
    private static final j<?> LITE_SCHEMA = new k();
    private static final j<?> FULL_SCHEMA = loadSchemaForFullRuntime();

    l() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j<?> full() {
        j<?> jVar = FULL_SCHEMA;
        if (jVar != null) {
            return jVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j<?> lite() {
        return LITE_SCHEMA;
    }

    private static j<?> loadSchemaForFullRuntime() {
        try {
            return (j) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
