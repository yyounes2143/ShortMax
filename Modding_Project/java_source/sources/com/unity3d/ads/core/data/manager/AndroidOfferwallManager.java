package com.unity3d.ads.core.data.manager;

import com.unity3d.ads.core.domain.offerwall.OfferwallEventData;
import com.unity3d.services.ads.offerwall.OfferwallAdapterBridge;
import com.unity3d.services.core.log.DeviceLog;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidOfferwallManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidOfferwallManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidOfferwallManager.kt\ncom/unity3d/ads/core/data/manager/AndroidOfferwallManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidOfferwallManager implements OfferwallManager {
    @NotNull
    private final OfferwallAdapterBridge offerwallBridge;

    public AndroidOfferwallManager(@NotNull OfferwallAdapterBridge offerwallBridge) {
        Intrinsics.checkNotNullParameter(offerwallBridge, "offerwallBridge");
        this.offerwallBridge = offerwallBridge;
    }

    @Override // com.unity3d.ads.core.data.manager.OfferwallManager
    @Nullable
    public Object getVersion(@NotNull c<? super String> cVar) {
        return this.offerwallBridge.getVersion();
    }

    @Override // com.unity3d.ads.core.data.manager.OfferwallManager
    @Nullable
    public Object isAdReady(@NotNull String str, @NotNull c<? super Boolean> cVar) {
        return kotlin.coroutines.jvm.internal.a.a(this.offerwallBridge.isAdReady(str));
    }

    @Override // com.unity3d.ads.core.data.manager.OfferwallManager
    @Nullable
    public Object isConnected(@NotNull c<? super Boolean> cVar) {
        return kotlin.coroutines.jvm.internal.a.a(this.offerwallBridge.isConnected());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0098  */
    @Override // com.unity3d.ads.core.data.manager.OfferwallManager
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object loadAd(@org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.unity3d.ads.core.data.manager.AndroidOfferwallManager$loadAd$1
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.ads.core.data.manager.AndroidOfferwallManager$loadAd$1 r0 = (com.unity3d.ads.core.data.manager.AndroidOfferwallManager$loadAd$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.manager.AndroidOfferwallManager$loadAd$1 r0 = new com.unity3d.ads.core.data.manager.AndroidOfferwallManager$loadAd$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.f.b(r7)
            goto L66
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L32:
            kotlin.f.b(r7)
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r2 = "Offerwall Manager - loadAd: "
            r7.append(r2)
            r7.append(r6)
            java.lang.String r7 = r7.toString()
            com.unity3d.services.core.log.DeviceLog.debug(r7)
            com.unity3d.services.ads.offerwall.OfferwallAdapterBridge r7 = r5.offerwallBridge
            kt.f r7 = r7.getOfferwallEventFlow()
            com.unity3d.ads.core.data.manager.AndroidOfferwallManager$loadAd$2 r2 = new com.unity3d.ads.core.data.manager.AndroidOfferwallManager$loadAd$2
            r2.<init>(r5, r6, r4)
            kt.f r7 = kotlinx.coroutines.flow.c.Q(r7, r2)
            com.unity3d.ads.core.data.manager.AndroidOfferwallManager$loadAd$3 r2 = new com.unity3d.ads.core.data.manager.AndroidOfferwallManager$loadAd$3
            r2.<init>(r6, r4)
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.flow.c.x(r7, r2, r0)
            if (r7 != r1) goto L66
            return r1
        L66:
            r6 = r7
            com.unity3d.ads.core.domain.offerwall.OfferwallEventData r6 = (com.unity3d.ads.core.domain.offerwall.OfferwallEventData) r6
            com.unity3d.services.ads.offerwall.OfferwallEvent r6 = r6.getOfferwallEvent()
            com.unity3d.services.ads.offerwall.OfferwallEvent r0 = com.unity3d.services.ads.offerwall.OfferwallEvent.REQUEST_SUCCESS
            if (r6 == r0) goto L72
            r4 = r7
        L72:
            com.unity3d.ads.core.domain.offerwall.OfferwallEventData r4 = (com.unity3d.ads.core.domain.offerwall.OfferwallEventData) r4
            if (r4 == 0) goto L98
            com.unity3d.ads.core.data.model.exception.LoadException r6 = new com.unity3d.ads.core.data.model.exception.LoadException
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r0 = "Error loading offerwall ad: "
            r7.append(r0)
            java.lang.String r0 = r4.getErrorMessage()
            if (r0 != 0) goto L8c
            com.unity3d.services.ads.offerwall.OfferwallEvent r0 = r4.getOfferwallEvent()
        L8c:
            r7.append(r0)
            java.lang.String r7 = r7.toString()
            r0 = 0
            r6.<init>(r0, r7)
            throw r6
        L98:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.manager.AndroidOfferwallManager.loadAd(java.lang.String, rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.data.manager.OfferwallManager
    @NotNull
    public kt.b<OfferwallEventData> showAd(@NotNull String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        DeviceLog.debug("Offerwall Manager - showAd: " + placementName);
        return kotlinx.coroutines.flow.c.Y(kotlinx.coroutines.flow.c.Q(this.offerwallBridge.getOfferwallEventFlow(), new AndroidOfferwallManager$showAd$1(this, placementName, null)), new AndroidOfferwallManager$showAd$2(null));
    }
}
