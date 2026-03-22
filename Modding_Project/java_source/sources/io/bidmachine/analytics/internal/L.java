package io.bidmachine.analytics.internal;
/* loaded from: classes7.dex */
public final class L {

    /* renamed from: a  reason: collision with root package name */
    private final int f53978a;

    /* renamed from: b  reason: collision with root package name */
    private final StringBuffer f53979b;

    /* renamed from: c  reason: collision with root package name */
    private Long f53980c;

    public L(int i10, int i11) {
        this.f53978a = i11;
        this.f53979b = new StringBuffer(i10);
    }

    public final Long a() {
        return this.f53980c;
    }

    public String toString() {
        return this.f53979b.toString();
    }

    public final void a(String str) {
        if (this.f53979b.length() + str.length() < this.f53978a) {
            this.f53979b.append((CharSequence) str).append('\n');
            this.f53980c = Long.valueOf(System.currentTimeMillis());
        }
    }
}
