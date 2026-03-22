package com.inmobi.media;

import com.inmobi.media.kf;
import com.inmobi.media.lf;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class kf extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ lf f24941a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kf(lf lfVar) {
        super(0);
        this.f24941a = lfVar;
    }

    public static final void a(lf this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f25002c.post((gf) this$0.f25010k.getValue());
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: a */
    public final Runnable invoke() {
        final lf lfVar = this.f24941a;
        return new Runnable() { // from class: ub.u4
            @Override // java.lang.Runnable
            public final void run() {
                kf.a(lf.this);
            }
        };
    }
}
