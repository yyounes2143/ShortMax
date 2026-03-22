package com.unity3d.ads.core.data.manager;

import at.n;
import com.unity3d.ads.core.domain.offerwall.OfferwallEventData;
import com.unity3d.services.ads.offerwall.OfferwallEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidOfferwallManager.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.manager.AndroidOfferwallManager$showAd$2", f = "AndroidOfferwallManager.kt", l = {44}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidOfferwallManager$showAd$2 extends SuspendLambda implements n<c<? super OfferwallEventData>, OfferwallEventData, rs.c<? super Boolean>, Object> {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidOfferwallManager$showAd$2(rs.c<? super AndroidOfferwallManager$showAd$2> cVar) {
        super(3, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        OfferwallEventData offerwallEventData;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                offerwallEventData = (OfferwallEventData) this.L$0;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            OfferwallEventData offerwallEventData2 = (OfferwallEventData) this.L$1;
            this.L$0 = offerwallEventData2;
            this.label = 1;
            if (((c) this.L$0).emit(offerwallEventData2, this) == f10) {
                return f10;
            }
            offerwallEventData = offerwallEventData2;
        }
        return kotlin.coroutines.jvm.internal.a.a(!kotlin.collections.n.f0(new OfferwallEvent[]{OfferwallEvent.ON_CONTENT_DISMISS, OfferwallEvent.SHOW_FAILED}, offerwallEventData.getOfferwallEvent()));
    }

    @Override // at.n
    @Nullable
    public final Object invoke(@NotNull c<? super OfferwallEventData> cVar, @NotNull OfferwallEventData offerwallEventData, @Nullable rs.c<? super Boolean> cVar2) {
        AndroidOfferwallManager$showAd$2 androidOfferwallManager$showAd$2 = new AndroidOfferwallManager$showAd$2(cVar2);
        androidOfferwallManager$showAd$2.L$0 = cVar;
        androidOfferwallManager$showAd$2.L$1 = offerwallEventData;
        return androidOfferwallManager$showAd$2.invokeSuspend(Unit.f60915a);
    }
}
