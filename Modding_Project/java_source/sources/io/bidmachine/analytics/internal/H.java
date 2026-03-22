package io.bidmachine.analytics.internal;

import android.content.Context;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.analytics.internal.AbstractC3314i;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes7.dex */
public final class H extends AbstractC3314i {

    /* renamed from: j  reason: collision with root package name */
    public static final a f53961j = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private final J f53962g;

    /* renamed from: h  reason: collision with root package name */
    private final I f53963h;

    /* renamed from: i  reason: collision with root package name */
    private final String f53964i;

    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public /* synthetic */ H(J j10, I i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, (i11 & 2) != 0 ? new I(j10, null, 2, null) : i10);
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public String a() {
        return this.f53964i;
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3314i, io.bidmachine.analytics.internal.AbstractC3315j
    public void e(Context context) {
        super.e(context);
        this.f53963h.a();
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3314i, io.bidmachine.analytics.internal.AbstractC3315j
    public void f(Context context) {
        this.f53963h.b();
        super.f(context);
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3314i, io.bidmachine.analytics.internal.AbstractC3315j
    /* renamed from: a */
    public void b(AbstractC3314i.a aVar) {
        super.b(aVar);
        this.f53963h.a(aVar);
    }

    public H(J j10, I i10) {
        this.f53962g = j10;
        this.f53963h = i10;
        this.f53964i = "alog";
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3314i
    public Object a(ReaderConfig.Rule rule, rs.c cVar) {
        return this.f53963h.a(rule);
    }

    @Override // io.bidmachine.analytics.internal.AbstractC3315j
    public void d(Context context) {
    }
}
