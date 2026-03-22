package p000admanager.c;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import p000admanager.d.o0;
/* renamed from: ad-manager.c.m  reason: invalid package */
/* loaded from: classes.dex */
public final class m extends Lambda implements Function2 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ o0 f441d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(o0 o0Var) {
        super(2);
        this.f441d = o0Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int intValue = ((Number) obj2).intValue();
        Intrinsics.checkNotNullParameter((View) obj, "<anonymous parameter 0>");
        if (intValue == 0) {
            this.f441d.invoke(Boolean.TRUE);
        }
        if (intValue == 8) {
            this.f441d.invoke(Boolean.FALSE);
        }
        return Unit.f60915a;
    }
}
