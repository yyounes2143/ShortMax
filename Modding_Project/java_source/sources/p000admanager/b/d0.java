package p000admanager.b;

import android.app.Activity;
import c.b;
import ca.i;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.UserMessagingPlatform;
import gt.g0;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.e;
import rs.c;
/* renamed from: ad-manager.b.d0  reason: invalid package */
/* loaded from: classes.dex */
public final class d0 extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f396h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Activity f397i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(Activity activity, c cVar) {
        super(2, cVar);
        this.f397i = activity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new d0(this.f397i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new d0(this.f397i, (c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AtomicBoolean atomicBoolean;
        AtomicBoolean atomicBoolean2;
        AtomicBoolean atomicBoolean3;
        ConsentRequestParameters l10;
        AtomicBoolean atomicBoolean4;
        Object f10 = a.f();
        int i10 = this.f396h;
        boolean z10 = false;
        try {
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    f.b(obj);
                    atomicBoolean3 = i.f3412e;
                    if (!atomicBoolean3.compareAndSet(false, true)) {
                        i.f3408a.m("requestConsentInfoUpdate ignore -> isUpdating = true");
                        return kotlin.coroutines.jvm.internal.a.a(false);
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    ConsentInformation consentInfo = UserMessagingPlatform.getConsentInformation(this.f397i);
                    i iVar = i.f3408a;
                    StringBuilder sb2 = new StringBuilder("requestConsentInfoUpdate start -> ");
                    Intrinsics.checkNotNullExpressionValue(consentInfo, "consentInfo");
                    sb2.append(i.u(iVar, consentInfo, null, 2, null));
                    iVar.o(sb2.toString());
                    l10 = iVar.l(this.f397i);
                    Activity activity = this.f397i;
                    this.f396h = 1;
                    e eVar = new e(a.c(this), 1);
                    eVar.H();
                    consentInfo.requestConsentInfoUpdate(activity, l10, new b(consentInfo, currentTimeMillis, eVar), new c.c(consentInfo, currentTimeMillis, eVar));
                    obj = eVar.B();
                    if (obj == a.f()) {
                        kotlin.coroutines.jvm.internal.f.c(this);
                    }
                    if (obj == f10) {
                        return f10;
                    }
                }
                boolean booleanValue = ((Boolean) obj).booleanValue();
                atomicBoolean4 = i.f3412e;
                atomicBoolean4.set(false);
                z10 = booleanValue;
            } catch (Exception e10) {
                i iVar2 = i.f3408a;
                iVar2.m("requestConsentInfoUpdate exception -> " + e10.getMessage());
                atomicBoolean = i.f3412e;
                atomicBoolean.set(false);
            }
            return kotlin.coroutines.jvm.internal.a.a(z10);
        } catch (Throwable th2) {
            atomicBoolean2 = i.f3412e;
            atomicBoolean2.set(false);
            throw th2;
        }
    }
}
