package com.unity3d.ads.core.data.manager;

import at.n;
import com.unity3d.ads.core.domain.scar.GmaEventData;
import com.unity3d.scar.adapter.common.GMAEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidScarManager.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.manager.AndroidScarManager$show$2", f = "AndroidScarManager.kt", l = {123}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidScarManager$show$2 extends SuspendLambda implements n<c<? super GmaEventData>, GmaEventData, rs.c<? super Boolean>, Object> {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidScarManager$show$2(rs.c<? super AndroidScarManager$show$2> cVar) {
        super(3, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        GmaEventData gmaEventData;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                gmaEventData = (GmaEventData) this.L$0;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            GmaEventData gmaEventData2 = (GmaEventData) this.L$1;
            this.L$0 = gmaEventData2;
            this.label = 1;
            if (((c) this.L$0).emit(gmaEventData2, this) == f10) {
                return f10;
            }
            gmaEventData = gmaEventData2;
        }
        return kotlin.coroutines.jvm.internal.a.a(!kotlin.collections.n.f0(new GMAEvent[]{GMAEvent.AD_CLOSED, GMAEvent.NO_AD_ERROR, GMAEvent.INTERSTITIAL_SHOW_ERROR, GMAEvent.REWARDED_SHOW_ERROR}, gmaEventData.getGmaEvent()));
    }

    @Override // at.n
    @Nullable
    public final Object invoke(@NotNull c<? super GmaEventData> cVar, @NotNull GmaEventData gmaEventData, @Nullable rs.c<? super Boolean> cVar2) {
        AndroidScarManager$show$2 androidScarManager$show$2 = new AndroidScarManager$show$2(cVar2);
        androidScarManager$show$2.L$0 = cVar;
        androidScarManager$show$2.L$1 = gmaEventData;
        return androidScarManager$show$2.invokeSuspend(Unit.f60915a);
    }
}
