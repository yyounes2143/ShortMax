package com.google.android.play.integrity.internal;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class t implements s {

    /* renamed from: a  reason: collision with root package name */
    private final Object f20022a;

    private t(Object obj) {
        this.f20022a = obj;
    }

    public static s b(Object obj) {
        if (obj != null) {
            return new t(obj);
        }
        throw new NullPointerException("instance cannot be null");
    }

    @Override // com.google.android.play.integrity.internal.x
    public final Object a() {
        return this.f20022a;
    }
}
