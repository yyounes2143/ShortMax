package com.inmobi.media;

import android.content.Context;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.io.File;
import java.util.Calendar;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.inmobi.media.zb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3275zb extends Lambda implements Function0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Ab f25515a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f25516b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3275zb(Ab ab2, boolean z10) {
        super(0);
        this.f25515a = ab2;
        this.f25516b = z10;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Ab ab2 = this.f25515a;
        if (!ab2.f23480g.isEmpty() && !ab2.f23481h.isEmpty()) {
            String c10 = ab2.c();
            Intrinsics.checkNotNullParameter(c10, "<this>");
            if (!Intrinsics.areEqual(c10, JsonUtils.EMPTY_JSON)) {
                long timeInMillis = Calendar.getInstance().getTimeInMillis();
                if (this.f25515a.f23483j.length() == 0) {
                    Ab ab3 = this.f25515a;
                    ScheduledExecutorService scheduledExecutorService = AbstractC3048l7.f24958a;
                    Context context = ab3.f23474a;
                    Intrinsics.checkNotNullParameter(context, "context");
                    File file = new File(context.getFilesDir() + "/logging");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    ab3.f23483j = context.getFilesDir() + "/logging/" + timeInMillis + ".txt";
                }
                Ab ab4 = this.f25515a;
                if (AbstractC3064m7.a("RemoteLogger", ab4.c(), ab4.f23483j)) {
                    Ab ab5 = this.f25515a;
                    boolean z10 = this.f25516b;
                    String str = ab5.f23483j;
                    Y6 data = new Y6(str, timeInMillis, 0, 0L, z10, ab5.f23484k.get(), 12);
                    Z6 d10 = Nc.d();
                    d10.getClass();
                    Intrinsics.checkNotNullParameter(data, "data");
                    if (!T1.a(d10, "filename=\"" + str + '\"', null, null, null, null, null, 62).isEmpty()) {
                        d10.b(data);
                    } else {
                        int i10 = this.f25515a.f23476c;
                        d10.a((Object) data);
                        if (d10.f24438b != null) {
                            C5.a();
                        }
                        ScheduledExecutorService scheduledExecutorService2 = AbstractC3048l7.f24958a;
                        Ab ab6 = this.f25515a;
                        AbstractC3032k7.a(d10, timeInMillis - ab6.f23475b, ab6.f23476c);
                    }
                }
            }
        }
        return Unit.f60915a;
    }
}
