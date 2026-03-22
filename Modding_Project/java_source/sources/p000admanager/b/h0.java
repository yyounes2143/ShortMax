package p000admanager.b;

import android.app.Activity;
import ca.i;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.UserMessagingPlatform;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.b.h0  reason: invalid package */
/* loaded from: classes.dex */
public final class h0 extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f401h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Activity f402i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(Activity activity, c cVar) {
        super(2, cVar);
        this.f402i = activity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new h0(this.f402i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new h0(this.f402i, (c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f401h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return obj;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            return obj;
        }
        f.b(obj);
        ConsentInformation consentInformation = UserMessagingPlatform.getConsentInformation(this.f402i);
        if (consentInformation.getConsentStatus() != 2 && consentInformation.canRequestAds()) {
            i iVar = i.f3408a;
            if (!iVar.q(this.f402i)) {
                Activity activity = this.f402i;
                this.f401h = 2;
                obj = iVar.B(activity, this);
                if (obj == f10) {
                    return f10;
                }
                return obj;
            }
            return kotlin.coroutines.jvm.internal.a.a(true);
        }
        i iVar2 = i.f3408a;
        Activity activity2 = this.f402i;
        this.f401h = 1;
        obj = iVar2.y(activity2, this);
        if (obj == f10) {
            return f10;
        }
        return obj;
    }
}
