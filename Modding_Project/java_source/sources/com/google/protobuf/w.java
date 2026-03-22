package com.google.protobuf;
/* compiled from: MapFieldSchemas.java */
/* loaded from: classes5.dex */
final class w {
    private static final u FULL_SCHEMA = loadSchemaForFullRuntime();
    private static final u LITE_SCHEMA = new v();

    w() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u full() {
        return FULL_SCHEMA;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u lite() {
        return LITE_SCHEMA;
    }

    private static u loadSchemaForFullRuntime() {
        try {
            return (u) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
