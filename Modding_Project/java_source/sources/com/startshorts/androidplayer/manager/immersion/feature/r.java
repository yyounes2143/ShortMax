package com.startshorts.androidplayer.manager.immersion.feature;

import android.os.Bundle;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar2;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SeekbarLoggerFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class r implements IImmersionFeature {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f42659b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private int f42660a = -1;

    /* compiled from: SeekbarLoggerFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: SeekbarLoggerFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.SEEKBAR_START_TOUCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.SEEKBAR_STOP_TOUCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        Object obj;
        int i10;
        Object obj2;
        int i11;
        Intrinsics.checkNotNullParameter(message, "message");
        int i12 = b.$EnumSwitchMapping$0[message.b().ordinal()];
        int i13 = 1;
        DiscreteSeekBar2 discreteSeekBar2 = null;
        if (i12 != 1) {
            if (i12 != 2 || this.f42660a == -1) {
                return;
            }
            HashMap<String, Object> a10 = message.a();
            if (a10 != null) {
                obj2 = a10.get("seekbar");
            } else {
                obj2 = null;
            }
            if (obj2 instanceof DiscreteSeekBar2) {
                discreteSeekBar2 = (DiscreteSeekBar2) obj2;
            }
            if (discreteSeekBar2 != null) {
                i11 = discreteSeekBar2.getProgress();
            } else {
                i11 = -1;
            }
            BaseEpisode b10 = b(message);
            Logger.f41511a.h("SeekbarLoggerFeature", "stopTouch -> " + i11 + "ms");
            if (i11 != -1 && b10 != null) {
                if (i11 >= this.f42660a) {
                    i13 = 0;
                }
                EventManager eventManager = EventManager.f42463a;
                Bundle C = eventManager.C(b10);
                C.putString("scene", "immersion");
                TimeUtil timeUtil = TimeUtil.f48175a;
                C.putString("drag_start_time", timeUtil.c(this.f42660a / 1000, false));
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "video_drag_start", C, 0L, 4, null);
                Bundle C2 = eventManager.C(b10);
                C2.putString("scene", "immersion");
                C2.putString("drag_end_time", timeUtil.c(i11 / 1000, false));
                C2.putString("drag_duration", String.valueOf(Math.abs(i11 - this.f42660a) / 1000));
                C2.putString("is_rewind", String.valueOf(i13));
                EventManager.s0(eventManager, "video_drag_end", C2, 0L, 4, null);
                this.f42660a = -1;
                return;
            }
            this.f42660a = -1;
            return;
        }
        if (this.f42660a == -1) {
            HashMap<String, Object> a11 = message.a();
            if (a11 != null) {
                obj = a11.get("seekbar");
            } else {
                obj = null;
            }
            if (obj instanceof DiscreteSeekBar2) {
                discreteSeekBar2 = (DiscreteSeekBar2) obj;
            }
            if (discreteSeekBar2 != null) {
                i10 = discreteSeekBar2.getProgress();
            } else {
                i10 = -1;
            }
            this.f42660a = i10;
        }
        Logger.f41511a.h("SeekbarLoggerFeature", "startTouch -> " + this.f42660a + "ms");
    }

    @Nullable
    public BaseEpisode b(@NotNull k kVar) {
        return IImmersionFeature.a.b(this, kVar);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.SEEKBAR_LOGGER;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
    }
}
