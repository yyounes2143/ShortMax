package com.startshorts.androidplayer.manager.immersion.feature;

import android.os.Bundle;
import com.applovin.sdk.AppLovinEventTypes;
import com.startshorts.androidplayer.bean.shorts.PlaySpeed;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.utils.VibratorUtil;
import fk.h0;
import java.util.HashMap;
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
public final class o implements IImmersionFeature {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f42652e = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private PlaySpeed f42653a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private PlaySpeed f42654b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f42655c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private b f42656d;

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
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.PLAY_EPISODE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PAGE_SECOND_LONG_CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PAGE_USER_DRAGGING_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PAGE_MULTI_POINTER_TOUCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PAGE_CANCEL_FIRST_LONG_CLICK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PAGE_CANCEL_SECOND_LONG_CLICK.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[IImmersionFeature.MessageType.CANCEL_LONG_CLICK_SPEED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[IImmersionFeature.MessageType.CLICK_PLAY_SPEED_OF_MENU.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(o oVar, Ref.ObjectRef objectRef) {
        b bVar = oVar.f42656d;
        if (bVar != null) {
            bVar.c((PlaySpeed) objectRef.element);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(o oVar) {
        b bVar = oVar.f42656d;
        if (bVar != null) {
            bVar.a();
        }
    }

    private final void i() {
        PlaySpeed playSpeed = this.f42653a;
        if (playSpeed != null) {
            Logger logger = Logger.f41511a;
            logger.h("PlaySpeedFeature", "restorePlaySpeed -> target(" + playSpeed.getValue() + ')');
            l(this, false, playSpeed, false, 5, null);
        }
    }

    private final void k(final boolean z10, final PlaySpeed playSpeed, final boolean z11) {
        Float f10;
        PlaySpeed playSpeed2 = this.f42654b;
        Float f11 = null;
        if (playSpeed2 != null) {
            f10 = Float.valueOf(playSpeed2.getValue());
        } else {
            f10 = null;
        }
        if (!Intrinsics.areEqual(f10, playSpeed.getValue())) {
            this.f42653a = this.f42654b;
            this.f42654b = playSpeed;
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("updatePlaySpeed -> old(");
            PlaySpeed playSpeed3 = this.f42653a;
            if (playSpeed3 != null) {
                f11 = Float.valueOf(playSpeed3.getValue());
            }
            sb2.append(f11);
            sb2.append(") new(");
            sb2.append(playSpeed.getValue());
            sb2.append(") fromUser(");
            sb2.append(z11);
            sb2.append(')');
            logger.h("PlaySpeedFeature", sb2.toString());
            h0.f51735a.e(new Runnable() { // from class: hf.c0
                @Override // java.lang.Runnable
                public final void run() {
                    com.startshorts.androidplayer.manager.immersion.feature.o.m(com.startshorts.androidplayer.manager.immersion.feature.o.this, z10, playSpeed, z11);
                }
            });
        }
    }

    static /* synthetic */ void l(o oVar, boolean z10, PlaySpeed playSpeed, boolean z11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        oVar.k(z10, playSpeed, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(o oVar, boolean z10, PlaySpeed playSpeed, boolean z11) {
        b bVar = oVar.f42656d;
        if (bVar != null) {
            bVar.b(z10, oVar.f42653a, playSpeed, z11);
        }
    }

    /* JADX WARN: Type inference failed for: r4v11, types: [T, com.startshorts.androidplayer.bean.shorts.PlaySpeed] */
    /* JADX WARN: Type inference failed for: r4v7, types: [T, com.startshorts.androidplayer.bean.shorts.PlaySpeed] */
    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        Object obj;
        PlaySpeed playSpeed;
        Object obj2;
        Intrinsics.checkNotNullParameter(message, "message");
        PlaySpeed playSpeed2 = null;
        PlaySpeed playSpeed3 = null;
        Float f10 = null;
        switch (c.$EnumSwitchMapping$0[message.b().ordinal()]) {
            case 1:
                if (this.f42654b == null) {
                    HashMap<String, Object> a10 = message.a();
                    if (a10 != null) {
                        obj = a10.get("default_play_speed");
                    } else {
                        obj = null;
                    }
                    if (obj instanceof PlaySpeed) {
                        playSpeed2 = (PlaySpeed) obj;
                    }
                    if (playSpeed2 == null) {
                        playSpeed2 = PlaySpeed.Companion.getPLAY_SPEED_1();
                    }
                    l(this, true, playSpeed2, false, 4, null);
                    return;
                }
                return;
            case 2:
                if (this.f42655c || (playSpeed = this.f42654b) == null) {
                    return;
                }
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                float value = playSpeed.getValue();
                PlaySpeed.Companion companion = PlaySpeed.Companion;
                if (value < companion.getPLAY_SPEED_3().getValue()) {
                    objectRef.element = companion.getPLAY_SPEED_3();
                } else if (playSpeed.getValue() >= companion.getPLAY_SPEED_3().getValue() && playSpeed.getValue() < companion.getPLAY_SPEED_4().getValue()) {
                    objectRef.element = companion.getPLAY_SPEED_4();
                }
                Logger logger = Logger.f41511a;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("startLongClickPlaySpeed -> currentPlaySpeed(");
                sb2.append(playSpeed.getValue());
                sb2.append(") targetPlaySpeed(");
                PlaySpeed playSpeed4 = (PlaySpeed) objectRef.element;
                if (playSpeed4 != null) {
                    f10 = Float.valueOf(playSpeed4.getValue());
                }
                sb2.append(f10);
                sb2.append(')');
                logger.h("PlaySpeedFeature", sb2.toString());
                if (objectRef.element != 0) {
                    this.f42655c = true;
                    EventManager eventManager = EventManager.f42463a;
                    Bundle bundle = new Bundle();
                    bundle.putString(AppLovinEventTypes.USER_COMPLETED_LEVEL, String.valueOf(((PlaySpeed) objectRef.element).getValue()));
                    Unit unit = Unit.f60915a;
                    EventManager.s0(eventManager, "speed_press", bundle, 0L, 4, null);
                    l(this, false, (PlaySpeed) objectRef.element, true, 1, null);
                    h0.f51735a.e(new Runnable() { // from class: hf.a0
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.startshorts.androidplayer.manager.immersion.feature.o.g(com.startshorts.androidplayer.manager.immersion.feature.o.this, objectRef);
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
                Logger.f41511a.h("PlaySpeedFeature", "cancelLongClickPlaySpeed -> longClickPlaySpeed(" + this.f42655c + ')');
                if (this.f42655c) {
                    this.f42655c = false;
                    h0.f51735a.e(new Runnable() { // from class: hf.b0
                        @Override // java.lang.Runnable
                        public final void run() {
                            com.startshorts.androidplayer.manager.immersion.feature.o.h(com.startshorts.androidplayer.manager.immersion.feature.o.this);
                        }
                    });
                    i();
                    return;
                }
                return;
            case 8:
                HashMap<String, Object> a11 = message.a();
                if (a11 != null) {
                    obj2 = a11.get("play_speed");
                } else {
                    obj2 = null;
                }
                if (obj2 instanceof PlaySpeed) {
                    playSpeed3 = (PlaySpeed) obj2;
                }
                PlaySpeed playSpeed5 = playSpeed3;
                if (playSpeed5 == null) {
                    return;
                }
                l(this, false, playSpeed5, true, 1, null);
                return;
            default:
                return;
        }
    }

    @Nullable
    public final PlaySpeed e() {
        return this.f42654b;
    }

    public final boolean f() {
        return this.f42655c;
    }

    public final void j(@Nullable b bVar) {
        this.f42656d = bVar;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
        this.f42656d = null;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.PLAY_SPEED;
    }
}
