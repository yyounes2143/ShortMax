package com.startshorts.androidplayer.manager.immersion.feature;

import android.app.Activity;
import androidx.browser.trusted.sharing.ShareTarget;
import com.startshorts.androidplayer.bean.eventbus.EpisodeListUnlockedEvent;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.immersion.feature.AdMediaVideoFeature;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import fk.h0;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdMediaVideoFeature.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAdMediaVideoFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdMediaVideoFeature.kt\ncom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,192:1\n216#2,2:193\n*S KotlinDebug\n*F\n+ 1 AdMediaVideoFeature.kt\ncom/startshorts/androidplayer/manager/immersion/feature/AdMediaVideoFeature\n*L\n157#1:193,2\n*E\n"})
/* loaded from: classes6.dex */
public final class AdMediaVideoFeature implements IImmersionFeature {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f42588e = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private c f42589a;

    /* renamed from: c  reason: collision with root package name */
    private boolean f42591c;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ms.i f42590b = kotlin.c.b(new Function0() { // from class: hf.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            HashMap o10;
            o10 = AdMediaVideoFeature.o();
            return o10;
        }
    });
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final ms.i f42592d = kotlin.c.b(new Function0() { // from class: hf.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            HashMap l10;
            l10 = AdMediaVideoFeature.l();
            return l10;
        }
    });

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: AdMediaVideoFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class DisplayPosition {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ DisplayPosition[] $VALUES;
        @NotNull
        private final String scene;
        public static final DisplayPosition PRE = new DisplayPosition("PRE", 0, "pre_roll");
        public static final DisplayPosition POST = new DisplayPosition(ShareTarget.METHOD_POST, 1, "post_roll");

        private static final /* synthetic */ DisplayPosition[] $values() {
            return new DisplayPosition[]{PRE, POST};
        }

        static {
            DisplayPosition[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private DisplayPosition(String str, int i10, String str2) {
            this.scene = str2;
        }

        @NotNull
        public static ss.a<DisplayPosition> getEntries() {
            return $ENTRIES;
        }

        public static DisplayPosition valueOf(String str) {
            return (DisplayPosition) Enum.valueOf(DisplayPosition.class, str);
        }

        public static DisplayPosition[] values() {
            return (DisplayPosition[]) $VALUES.clone();
        }

        @NotNull
        public final String getScene() {
            return this.scene;
        }
    }

    /* compiled from: AdMediaVideoFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AdMediaVideoFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<DisplayPosition, Boolean> f42593a;

        public b() {
            this(null, 1, null);
        }

        @NotNull
        public final HashMap<DisplayPosition, Boolean> a() {
            return this.f42593a;
        }

        public b(@NotNull HashMap<DisplayPosition, Boolean> map) {
            Intrinsics.checkNotNullParameter(map, "map");
            this.f42593a = map;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ b(java.util.HashMap r1, int r2, kotlin.jvm.internal.DefaultConstructorMarker r3) {
            /*
                r0 = this;
                r2 = r2 & 1
                if (r2 == 0) goto L15
                java.util.HashMap r1 = new java.util.HashMap
                r1.<init>()
                com.startshorts.androidplayer.manager.immersion.feature.AdMediaVideoFeature$DisplayPosition r2 = com.startshorts.androidplayer.manager.immersion.feature.AdMediaVideoFeature.DisplayPosition.PRE
                java.lang.Boolean r3 = java.lang.Boolean.FALSE
                r1.put(r2, r3)
                com.startshorts.androidplayer.manager.immersion.feature.AdMediaVideoFeature$DisplayPosition r2 = com.startshorts.androidplayer.manager.immersion.feature.AdMediaVideoFeature.DisplayPosition.POST
                r1.put(r2, r3)
            L15:
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.immersion.feature.AdMediaVideoFeature.b.<init>(java.util.HashMap, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }
    }

    /* compiled from: AdMediaVideoFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface c {
        void a(@NotNull DisplayPosition displayPosition);

        void b(@NotNull BaseEpisode baseEpisode, @NotNull DisplayPosition displayPosition);
    }

    /* compiled from: AdMediaVideoFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class d {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_COMPLETE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_CREATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final HashMap<String, com.startshorts.androidplayer.manager.configure.ad.b> i() {
        return (HashMap) this.f42592d.getValue();
    }

    private final HashMap<Integer, b> j() {
        return (HashMap) this.f42590b.getValue();
    }

    private final boolean k() {
        return this.f42591c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashMap l() {
        DisplayPosition displayPosition = DisplayPosition.PRE;
        Pair a10 = ms.k.a(displayPosition.getScene(), new com.startshorts.androidplayer.manager.configure.ad.b(displayPosition.getScene(), 0, new Function0() { // from class: hf.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int m10;
                m10 = AdMediaVideoFeature.m();
                return Integer.valueOf(m10);
            }
        }));
        DisplayPosition displayPosition2 = DisplayPosition.POST;
        return p0.k(a10, ms.k.a(displayPosition2.getScene(), new com.startshorts.androidplayer.manager.configure.ad.b(displayPosition2.getScene(), 0, new Function0() { // from class: hf.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int n10;
                n10 = AdMediaVideoFeature.n();
                return Integer.valueOf(n10);
            }
        })));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int m() {
        return com.startshorts.androidplayer.manager.configure.ad.a.f42306a.f().j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int n() {
        return com.startshorts.androidplayer.manager.configure.ad.a.f42306a.f().i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HashMap o() {
        return new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(DisplayPosition displayPosition, b bVar, final AdMediaVideoFeature adMediaVideoFeature, final Function0 function0, boolean z10) {
        HashMap<DisplayPosition, Boolean> a10;
        Logger logger = Logger.f41511a;
        logger.h("AdMediaVideoFeature", "showMediaVideoAD " + displayPosition + " -> end, showSucceed = " + z10);
        if (bVar != null && (a10 = bVar.a()) != null) {
            a10.put(displayPosition, Boolean.TRUE);
        }
        h0.f51735a.e(new Runnable() { // from class: hf.g
            @Override // java.lang.Runnable
            public final void run() {
                AdMediaVideoFeature.s(AdMediaVideoFeature.this, function0);
            }
        });
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(AdMediaVideoFeature adMediaVideoFeature, Function0 function0) {
        adMediaVideoFeature.f42591c = false;
        function0.invoke();
    }

    private final boolean t(BaseEpisode baseEpisode, DisplayPosition displayPosition) {
        boolean z10;
        if (k()) {
            Logger.f41511a.h("AdMediaVideoFeature", "showMediaVideoAD " + displayPosition + " -> ignore, mIsMediaVideoAdShowing is true");
            return false;
        } else if (!com.startshorts.androidplayer.manager.configure.ad.d.f42346a.a()) {
            Logger.f41511a.h("AdMediaVideoFeature", "showMediaVideoAD " + displayPosition + " -> ignore, AdSceneManager.adEnable = false");
            return false;
        } else if (!com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().p(displayPosition.getScene())) {
            Logger.f41511a.h("AdMediaVideoFeature", "showMediaVideoAD " + displayPosition + " -> ignore, isSceneEnable false");
            return false;
        } else {
            com.startshorts.androidplayer.manager.configure.ad.b bVar = i().get(displayPosition.getScene());
            if (bVar != null && !bVar.k()) {
                Logger.f41511a.h("AdMediaVideoFeature", "showMediaVideoAD " + displayPosition + " -> ignore, canConsume false, adActionCounter=" + bVar);
                return false;
            }
            b bVar2 = j().get(Integer.valueOf(baseEpisode.getId()));
            if (bVar2 == null) {
                Logger.f41511a.h("AdMediaVideoFeature", "showMediaVideoAD " + displayPosition + " -> ignore, adDisplayStatus == null");
                return false;
            }
            Boolean bool = bVar2.a().get(displayPosition);
            if (bool != null) {
                z10 = bool.booleanValue();
            } else {
                z10 = true;
            }
            if (!z10) {
                return true;
            }
            Logger.f41511a.h("AdMediaVideoFeature", "showMediaVideoAD " + displayPosition + " -> ignore, showed already");
            return false;
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        DisplayPosition displayPosition;
        Intrinsics.checkNotNullParameter(message, "message");
        int i10 = d.$EnumSwitchMapping$0[message.b().ordinal()];
        if (i10 != 1) {
            displayPosition = null;
            if (i10 == 2) {
                au.c.d().p(this);
            }
        } else {
            displayPosition = DisplayPosition.POST;
        }
        if (displayPosition == null) {
            return;
        }
        BaseEpisode h10 = h(message);
        if (h10 == null) {
            c cVar = this.f42589a;
            if (cVar != null) {
                cVar.a(displayPosition);
                return;
            }
            return;
        }
        u(h10, displayPosition);
    }

    @Nullable
    public BaseEpisode h(@NotNull k kVar) {
        return IImmersionFeature.a.b(this, kVar);
    }

    public final void p(@Nullable c cVar) {
        this.f42589a = cVar;
    }

    public final boolean q(@NotNull Activity activity, @NotNull BaseEpisode episode, @NotNull final DisplayPosition displayPosition, @NotNull final Function0<Unit> onAdEnd) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(displayPosition, "displayPosition");
        Intrinsics.checkNotNullParameter(onAdEnd, "onAdEnd");
        try {
            this.f42591c = true;
            com.startshorts.androidplayer.manager.configure.ad.b bVar = i().get(displayPosition.getScene());
            final b bVar2 = j().get(Integer.valueOf(episode.getId()));
            if (bVar != null) {
                bVar.l();
            }
            Logger logger = Logger.f41511a;
            logger.h("AdMediaVideoFeature", "showMediaVideoAD " + displayPosition + " -> start");
            AdManager.f41600a.m0(new WeakReference<>(activity), 2000L, displayPosition.getScene(), episode, new Function1() { // from class: hf.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit r10;
                    r10 = AdMediaVideoFeature.r(AdMediaVideoFeature.DisplayPosition.this, bVar2, this, onAdEnd, ((Boolean) obj).booleanValue());
                    return r10;
                }
            });
            return true;
        } catch (Exception e10) {
            this.f42591c = false;
            Logger logger2 = Logger.f41511a;
            logger2.e("AdMediaVideoFeature", "showMediaVideoAD " + displayPosition + " -> error, " + e10.getMessage());
            return false;
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodeListUnlockedEvent(@NotNull EpisodeListUnlockedEvent event) {
        List<BaseEpisode> list;
        BaseEpisode baseEpisode;
        Intrinsics.checkNotNullParameter(event, "event");
        Logger logger = Logger.f41511a;
        logger.h("AdMediaVideoFeature", "receive EpisodeListUnlockedEvent -> unlockType(" + event.getUnlockType() + ") userRecharged(" + event.getUserRecharged() + ')');
        if (event.getUnlockType() == 3 && (list = event.getList()) != null && (baseEpisode = (BaseEpisode) CollectionsKt.t0(list, 0)) != null) {
            for (Map.Entry<String, com.startshorts.androidplayer.manager.configure.ad.b> entry : i().entrySet()) {
                entry.getValue().n();
            }
            j().put(Integer.valueOf(baseEpisode.getId()), new b(null, 1, null));
            if (w.f42667e.a(event.getCanWatchAd(), baseEpisode.isUnlockByOnlyCoins()) && baseEpisode.getEpisodeNum() < baseEpisode.getTotalEpisodes()) {
                return;
            }
            u(baseEpisode, DisplayPosition.PRE);
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
        j().clear();
        au.c.d().r(this);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.AD_MEDIA_VIDEO;
    }

    public final void u(@NotNull BaseEpisode episode, @NotNull DisplayPosition displayPosition) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(displayPosition, "displayPosition");
        if (t(episode, displayPosition)) {
            c cVar = this.f42589a;
            if (cVar != null) {
                cVar.b(episode, displayPosition);
                return;
            }
            return;
        }
        c cVar2 = this.f42589a;
        if (cVar2 != null) {
            cVar2.a(displayPosition);
        }
    }
}
