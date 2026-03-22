package com.amazonaws.transform;
/* loaded from: classes2.dex */
/* synthetic */ class SimpleTypeJsonUnmarshallers$1 {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ int[] f6387a;

    static {
        int[] iArr = new int[TimestampFormat.values().length];
        f6387a = iArr;
        try {
            iArr[TimestampFormat.ISO_8601.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f6387a[TimestampFormat.RFC_822.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f6387a[TimestampFormat.UNIX_TIMESTAMP.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
