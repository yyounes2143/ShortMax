package com.startshorts.androidplayer.manager.shorts.feature;

import android.os.Bundle;
import com.applovin.sdk.AppLovinEventTypes;
import com.startshorts.androidplayer.bean.shorts.PlaySpeed;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature;
import com.startshorts.androidplayer.utils.VibratorUtil;
import fk.h0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlaySpeedFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class f implements IShortsFeature {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f42983e = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private PlaySpeed f42984a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private PlaySpeed f42985b = PlaySpeed.Companion.getPLAY_SPEED_1();

    /* renamed from: c  reason: collision with root package name */
    private boolean f42986c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f42987d;

    /* compiled from: PlaySpeedFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PlaySpeedFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface b {
        void a();

        void b(boolean z10, @Nullable PlaySpeed playSpeed, @NotNull PlaySpeed playSpeed2, boolean z11);

        void c(@NotNull PlaySpeed playSpeed);
    }

    /* compiled from: PlaySpeedFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IShortsFeature.MessageType.values().length];
            try {
                iArr[IShortsFeature.MessageType.PLAY_EPISODE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IShortsFeature.MessageType.PAGE_SECOND_LONG_CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IShortsFeature.MessageType.PAGE_USER_DRAGGING_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IShortsFeature.MessageType.PAGE_MULTI_POINTER_TOUCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[IShortsFeature.MessageType.PAGE_CANCEL_FIRST_LONG_CLICK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[IShortsFeature.MessageType.PAGE_CANCEL_SECOND_LONG_CLICK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[IShortsFeature.MessageType.CANCEL_LONG_CLICK_SPEED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(f fVar, Ref.ObjectRef objectRef) {
        b bVar = fVar.f42987d;
        if (bVar != null) {
            bVar.c((PlaySpeed) objectRef.element);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(f fVar) {
        b bVar = fVar.f42987d;
        if (bVar != null) {
            bVar.a();
        }
    }

    private final void h() {
        PlaySpeed playSpeed = this.f42984a;
        if (playSpeed != null) {
            Logger logger = Logger.f41511a;
            logger.h("PlaySpeedFeature", "restorePlaySpeed -> target(" + playSpeed.getValue() + ')');
            k(this, false, playSpeed, false, 5, null);
        }
    }

    private final void j(final boolean z10, final PlaySpeed playSpeed, final boolean z11) {
        Float f10;
        if (this.f42985b.getValue() != playSpeed.getValue()) {
            this.f42984a = this.f42985b;
            this.f42985b = playSpeed;
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("updatePlaySpeed -> old(");
            PlaySpeed playSpeed2 = this.f42984a;
            if (playSpeed2 != null) {
                f10 = Float.valueOf(playSpeed2.getValue());
            } else {
                f10 = null;
            }
            sb2.append(f10);
            sb2.append(") new(");
            sb2.append(playSpeed.getValue());
            sb2.append(") fromUser(");
            sb2.append(z11);
            sb2.append(')');
            logger.h("PlaySpeedFeature", sb2.toString());
            h0.f51735a.e(new Runnable() { // from class: xf.f
                @Override // java.lang.Runnable
                public final void run() {
                    com.startshorts.androidplayer.manager.shorts.feature.f.l(com.startshorts.androidplayer.manager.shorts.feature.f.this, z10, playSpeed, z11);
                }
            });
        }
    }

    static /* synthetic */ void k(f fVar, boolean z10, PlaySpeed playSpeed, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        fVar.j(z10, playSpeed, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(f fVar, boolean z10, PlaySpeed playSpeed, boolean z11) {
        b bVar = fVar.f42987d;
        if (bVar != null) {
            bVar.b(z10, fVar.f42984a, playSpeed, z11);
        }
    }

    /* JADX WARN: Type inference failed for: r3v11, types: [T, com.startshorts.androidplayer.bean.shorts.PlaySpeed] */
    /* JADX WARN: Type inference failed for: r3v7, types: [T, com.startshorts.androidplayer.bean.shorts.PlaySpeed] */
    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void a(@NotNull i message) {
        Float f10;
        Intrinsics.checkNotNullParameter(message, "message");
        switch (c.$EnumSwitchMapping$0[message.b().ordinal()]) {
            case 1:
                PlaySpeed playSpeed = this.f42985b;
                PlaySpeed.Companion companion = PlaySpeed.Companion;
                if (!Intrinsics.areEqual(playSpeed, companion.getPLAY_SPEED_1())) {
                    k(this, true, companion.getPLAY_SPEED_1(), false, 4, null);
                    return;
                }
                return;
            case 2:
                if (this.f42986c) {
                    return;
                }
                PlaySpeed playSpeed2 = this.f42985b;
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                float value = playSpeed2.getValue();
                PlaySpeed.Companion companion2 = PlaySpeed.Companion;
                if (value < companion2.getPLAY_SPEED_3().getValue()) {
                    objectRef.element = companion2.getPLAY_SPEED_3();
                } else if (playSpeed2.getValue() >= companion2.getPLAY_SPEED_3().getValue() && playSpeed2.getValue() < companion2.getPLAY_SPEED_4().getValue()) {
                    objectRef.element = companion2.getPLAY_SPEED_4();
                }
                Logger logger = Logger.f41511a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("startLongClickPlaySpeed -> currentPlaySpeed(");
                sb2.append(playSpeed2.getValue());
                sb2.append(") targetPlaySpeed(");
                PlaySpeed playSpeed3 = (PlaySpeed) objectRef.element;
                if (playSpeed3 != null) {
                    f10 = Float.valueOf(playSpeed3.getValue());
                } else {
                    f10 = null;
                }
                sb2.append(f10);
                sb2.append(')');
                logger.h("PlaySpeedFeature", sb2.toString());
                if (objectRef.element != 0) {
                    this.f42986c = true;
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString(AppLovinEventTypes.USER_COMPLETED_LEVEL, String.valueOf(((PlaySpeed) objectRef.element).getValue()));
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "speed_press", bundle, 0L, 4, null);
                    k(this, false, (PlaySpeed) objectRef.element, true, 1, null);
                    h0.f51735a.e(new Runnable() { // from class: xf.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.startshorts.androidplayer.manager.shorts.feature.f.f(com.startshorts.androidplayer.manager.shorts.feature.f.this, objectRef);
                        }
                    });
                    VibratorUtil.f48177a.d();
                    return;
                }
                return;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                Logger logger2 = Logger.f41511a;
                logger2.h("PlaySpeedFeature", "cancelLongClickPlaySpeed -> longClickPlaySpeed(" + this.f42986c + ')');
                h0.f51735a.e(new Runnable() { // from class: xf.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.startshorts.androidplayer.manager.shorts.feature.f.g(com.startshorts.androidplayer.manager.shorts.feature.f.this);
                    }
                });
                if (this.f42986c) {
                    this.f42986c = false;
                    h();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @NotNull
    public final PlaySpeed e() {
        return this.f42985b;
    }

    public final void i(@Nullable b bVar) {
        this.f42987d = bVar;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void release() {
        this.f42987d = null;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    @NotNull
    public IShortsFeature.FeatureType type() {
        return IShortsFeature.FeatureType.PLAY_SPEED;
    }
}
