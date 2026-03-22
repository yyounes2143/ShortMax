package bm;

import io.bidmachine.protobuf.rendering.Rendering;
import io.bidmachine.rendering.model.AdElementType;
import io.bidmachine.rendering.model.CacheType;
import io.bidmachine.rendering.model.EventTaskType;
import io.bidmachine.rendering.model.EventType;
import io.bidmachine.rendering.model.Orientation;
import io.bidmachine.rendering.model.ScaleType;
import io.bidmachine.rendering.model.SideType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdaptiveRenderingParams.kt */
@Metadata
/* loaded from: classes7.dex */
public final class e0 {

    /* compiled from: AdaptiveRenderingParams.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;
        public static final /* synthetic */ int[] $EnumSwitchMapping$4;
        public static final /* synthetic */ int[] $EnumSwitchMapping$5;
        public static final /* synthetic */ int[] $EnumSwitchMapping$6;

        static {
            int[] iArr = new int[Rendering.Orientation.values().length];
            try {
                iArr[Rendering.Orientation.ORIENTATION_PORTRAIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Rendering.Orientation.ORIENTATION_LANDSCAPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Rendering.Orientation.ORIENTATION_SYSTEM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Rendering.Orientation.ORIENTATION_INVALID.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Rendering.Orientation.UNRECOGNIZED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Rendering.CacheType.values().length];
            try {
                iArr2[Rendering.CacheType.CACHE_TYPE_FULL_LOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Rendering.CacheType.CACHE_TYPE_PARTIAL_LOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[Rendering.CacheType.CACHE_TYPE_STREAM_LOAD.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[Rendering.CacheType.CACHE_TYPE_INVALID.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[Rendering.CacheType.UNRECOGNIZED.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[Rendering.Phase.ViewComponent.ViewComponentType.values().length];
            try {
                iArr3[Rendering.Phase.ViewComponent.ViewComponentType.VIEW_COMPONENT_TYPE_MRAID.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr3[Rendering.Phase.ViewComponent.ViewComponentType.VIEW_COMPONENT_TYPE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr3[Rendering.Phase.ViewComponent.ViewComponentType.VIEW_COMPONENT_TYPE_IMAGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr3[Rendering.Phase.ViewComponent.ViewComponentType.VIEW_COMPONENT_TYPE_LABEL.ordinal()] = 4;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr3[Rendering.Phase.ViewComponent.ViewComponentType.VIEW_COMPONENT_TYPE_COUNTDOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr3[Rendering.Phase.ViewComponent.ViewComponentType.VIEW_COMPONENT_TYPE_PROGRESS.ordinal()] = 6;
            } catch (NoSuchFieldError unused16) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.values().length];
            try {
                iArr4[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr4[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr4[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr4[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused20) {
            }
            $EnumSwitchMapping$3 = iArr4;
            int[] iArr5 = new int[Rendering.Image.ScaleType.values().length];
            try {
                iArr5[Rendering.Image.ScaleType.SCALE_TYPE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr5[Rendering.Image.ScaleType.SCALE_TYPE_TO_FILL.ordinal()] = 2;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr5[Rendering.Image.ScaleType.SCALE_TYPE_ASPECT_FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr5[Rendering.Image.ScaleType.SCALE_TYPE_ASPECT_FIT.ordinal()] = 4;
            } catch (NoSuchFieldError unused24) {
            }
            $EnumSwitchMapping$4 = iArr5;
            int[] iArr6 = new int[Rendering.Phase.Event.EventName.values().length];
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_IMPRESSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_CLICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_PROGRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_NAVIGATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_MUTE.ordinal()] = 5;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_UNMUTE.ordinal()] = 6;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_PAUSE.ordinal()] = 7;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_RESUME.ordinal()] = 8;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_SKIP.ordinal()] = 9;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_CLOSE.ordinal()] = 10;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_START.ordinal()] = 11;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_FIRST_QUARTILE.ordinal()] = 12;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_MIDPOINT.ordinal()] = 13;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_THIRD_QUARTILE.ordinal()] = 14;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_COMPLETE.ordinal()] = 15;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_USE_CUSTOM_CLOSE.ordinal()] = 16;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr6[Rendering.Phase.Event.EventName.EVENT_NAME_ON_SCHEDULED.ordinal()] = 17;
            } catch (NoSuchFieldError unused41) {
            }
            $EnumSwitchMapping$5 = iArr6;
            int[] iArr7 = new int[Rendering.Phase.Event.Task.TaskName.values().length];
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_MUTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_UNMUTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_TRACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_CLOSE.ordinal()] = 5;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_SKIP.ordinal()] = 6;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_OPEN.ordinal()] = 7;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_SHOW.ordinal()] = 8;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_HIDE.ordinal()] = 9;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_PROGRESS.ordinal()] = 10;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_SCHEDULE.ordinal()] = 11;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_LOCK_VISIBILITY.ordinal()] = 12;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_UNLOCK_VISIBILITY.ordinal()] = 13;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_NOTIFY_OPEN.ordinal()] = 14;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_SIMULATE_CLICK.ordinal()] = 15;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_PRIVACY_SHEET.ordinal()] = 16;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_REPEAT.ordinal()] = 17;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr7[Rendering.Phase.Event.Task.TaskName.TASK_NAME_TOGGLE_STATE_GROUPS.ordinal()] = 18;
            } catch (NoSuchFieldError unused59) {
            }
            $EnumSwitchMapping$6 = iArr7;
        }
    }

    public static final long j(@NotNull Rendering.AdaptiveAnimation.Timing timing) {
        Intrinsics.checkNotNullParameter(timing, "<this>");
        return bt.a.d(timing.getDuration() * 1000);
    }

    @Nullable
    public static final AdElementType k(@Nullable final Rendering.Phase.ViewComponent.ViewComponentType viewComponentType) {
        if (viewComponentType == null) {
            return null;
        }
        switch (a.$EnumSwitchMapping$2[viewComponentType.ordinal()]) {
            case 1:
                return AdElementType.Mraid;
            case 2:
                return AdElementType.Video;
            case 3:
                return AdElementType.Image;
            case 4:
                return AdElementType.Label;
            case 5:
                return AdElementType.Countdown;
            case 6:
                return AdElementType.Progress;
            default:
                io.bidmachine.core.a.e(new hr.b() { // from class: bm.y
                    @Override // hr.b
                    public final Object get() {
                        String l10;
                        l10 = e0.l(Rendering.Phase.ViewComponent.ViewComponentType.this);
                        return l10;
                    }
                });
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String l(Rendering.Phase.ViewComponent.ViewComponentType viewComponentType) {
        return "Unsupported ViewComponentType - " + viewComponentType.name();
    }

    @Nullable
    public static final CacheType m(@Nullable final Rendering.CacheType cacheType) {
        if (cacheType == null) {
            return null;
        }
        int i10 = a.$EnumSwitchMapping$1[cacheType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4 && i10 != 5) {
                        io.bidmachine.core.a.e(new hr.b() { // from class: bm.x
                            @Override // hr.b
                            public final Object get() {
                                String o10;
                                o10 = e0.o(Rendering.CacheType.this);
                                return o10;
                            }
                        });
                        return null;
                    }
                    io.bidmachine.core.a.a(new hr.b() { // from class: bm.w
                        @Override // hr.b
                        public final Object get() {
                            String n10;
                            n10 = e0.n(Rendering.CacheType.this);
                            return n10;
                        }
                    });
                    return null;
                }
                return CacheType.StreamLoad;
            }
            return CacheType.PartialLoad;
        }
        return CacheType.FullLoad;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String n(Rendering.CacheType cacheType) {
        return "Unsupported CacheType - " + cacheType.name();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String o(Rendering.CacheType cacheType) {
        return "Unsupported CacheType - " + cacheType.name();
    }

    @Nullable
    public static final EventTaskType p(@Nullable final Rendering.Phase.Event.Task.TaskName taskName) {
        if (taskName == null) {
            return null;
        }
        switch (a.$EnumSwitchMapping$6[taskName.ordinal()]) {
            case 1:
                return EventTaskType.Start;
            case 2:
                return EventTaskType.Mute;
            case 3:
                return EventTaskType.UnMute;
            case 4:
                return EventTaskType.Track;
            case 5:
                return EventTaskType.Close;
            case 6:
                return EventTaskType.Skip;
            case 7:
                return EventTaskType.Open;
            case 8:
                return EventTaskType.Show;
            case 9:
                return EventTaskType.Hide;
            case 10:
                return EventTaskType.Progress;
            case 11:
                return EventTaskType.Schedule;
            case 12:
                return EventTaskType.LockVisibility;
            case 13:
                return EventTaskType.UnlockVisibility;
            case 14:
                return EventTaskType.NotifyOpen;
            case 15:
                return EventTaskType.SimulateClick;
            case 16:
                return EventTaskType.OpenPrivacySheet;
            case 17:
                return EventTaskType.Repeat;
            case 18:
                return EventTaskType.ToggleStateGroups;
            default:
                io.bidmachine.core.a.e(new hr.b() { // from class: bm.v
                    @Override // hr.b
                    public final Object get() {
                        String q10;
                        q10 = e0.q(Rendering.Phase.Event.Task.TaskName.this);
                        return q10;
                    }
                });
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String q(Rendering.Phase.Event.Task.TaskName taskName) {
        return "Unsupported TaskName - " + taskName.name();
    }

    @Nullable
    public static final EventType r(@Nullable final Rendering.Phase.Event.EventName eventName) {
        if (eventName == null) {
            return null;
        }
        switch (a.$EnumSwitchMapping$5[eventName.ordinal()]) {
            case 1:
                return EventType.OnImpression;
            case 2:
                return EventType.OnClick;
            case 3:
                return EventType.OnProgress;
            case 4:
                return EventType.OnNavigate;
            case 5:
                return EventType.OnMute;
            case 6:
                return EventType.OnUnMute;
            case 7:
                return EventType.OnPause;
            case 8:
                return EventType.OnResume;
            case 9:
                return EventType.OnSkip;
            case 10:
                return EventType.OnClose;
            case 11:
                return EventType.OnStart;
            case 12:
                return EventType.OnFirstQuartile;
            case 13:
                return EventType.OnMidpoint;
            case 14:
                return EventType.OnThirdQuartile;
            case 15:
                return EventType.OnComplete;
            case 16:
                return EventType.OnUseCustomClose;
            case 17:
                return EventType.OnScheduled;
            default:
                io.bidmachine.core.a.e(new hr.b() { // from class: bm.z
                    @Override // hr.b
                    public final Object get() {
                        String s10;
                        s10 = e0.s(Rendering.Phase.Event.EventName.this);
                        return s10;
                    }
                });
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String s(Rendering.Phase.Event.EventName eventName) {
        return "Unsupported EventName - " + eventName.name();
    }

    @Nullable
    public static final Orientation t(@Nullable final Rendering.Orientation orientation) {
        if (orientation == null) {
            return null;
        }
        int i10 = a.$EnumSwitchMapping$0[orientation.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return null;
                }
                if (i10 != 4 && i10 != 5) {
                    io.bidmachine.core.a.e(new hr.b() { // from class: bm.b0
                        @Override // hr.b
                        public final Object get() {
                            String v10;
                            v10 = e0.v(Rendering.Orientation.this);
                            return v10;
                        }
                    });
                    return null;
                }
                io.bidmachine.core.a.a(new hr.b() { // from class: bm.a0
                    @Override // hr.b
                    public final Object get() {
                        String u10;
                        u10 = e0.u(Rendering.Orientation.this);
                        return u10;
                    }
                });
                return null;
            }
            return Orientation.Landscape;
        }
        return Orientation.Portrait;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String u(Rendering.Orientation orientation) {
        return "Unsupported Orientation - " + orientation.name();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String v(Rendering.Orientation orientation) {
        return "Unsupported Orientation - " + orientation.name();
    }

    @Nullable
    public static final ScaleType w(@Nullable final Rendering.Image.ScaleType scaleType) {
        if (scaleType == null) {
            return null;
        }
        int i10 = a.$EnumSwitchMapping$4[scaleType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        io.bidmachine.core.a.e(new hr.b() { // from class: bm.c0
                            @Override // hr.b
                            public final Object get() {
                                String x10;
                                x10 = e0.x(Rendering.Image.ScaleType.this);
                                return x10;
                            }
                        });
                        return null;
                    }
                    return ScaleType.AspectFit;
                }
                return ScaleType.AspectFill;
            }
            return ScaleType.ToFill;
        }
        return ScaleType.None;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String x(Rendering.Image.ScaleType scaleType) {
        return "Unsupported ScaleType - " + scaleType.name();
    }

    @Nullable
    public static final SideType y(@Nullable final Rendering.Phase.ViewComponent.Layout.Constraint.Anchor anchor) {
        if (anchor == null) {
            return null;
        }
        int i10 = a.$EnumSwitchMapping$3[anchor.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        io.bidmachine.core.a.e(new hr.b() { // from class: bm.d0
                            @Override // hr.b
                            public final Object get() {
                                String z10;
                                z10 = e0.z(Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.this);
                                return z10;
                            }
                        });
                        return null;
                    }
                    return SideType.Bottom;
                }
                return SideType.Top;
            }
            return SideType.Right;
        }
        return SideType.Left;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String z(Rendering.Phase.ViewComponent.Layout.Constraint.Anchor anchor) {
        return "Unsupported Anchor for SideType - " + anchor.name();
    }
}
