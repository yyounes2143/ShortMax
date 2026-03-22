package com.google.protobuf;
/* compiled from: NewInstanceSchemas.java */
/* loaded from: classes5.dex */
final class e0 {
    private static final c0 FULL_SCHEMA = loadSchemaForFullRuntime();
    private static final c0 LITE_SCHEMA = new d0();

    e0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c0 full() {
        return FULL_SCHEMA;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c0 lite() {
        return LITE_SCHEMA;
    }

    private static c0 loadSchemaForFullRuntime() {
        try {
            return (c0) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
