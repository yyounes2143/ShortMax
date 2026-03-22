package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.compose.runtime.internal.StabilityInferred;
import com.ss.ttm.player.MediaPlayer;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PointerEvent.android.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class PointerEvent {
    public static final int $stable = 8;
    private final int buttons;
    @NotNull
    private final List<PointerInputChange> changes;
    @Nullable
    private final InternalPointerEvent internalPointerEvent;
    private final int keyboardModifiers;
    private int type;

    public PointerEvent(@NotNull List<PointerInputChange> changes, @Nullable InternalPointerEvent internalPointerEvent) {
        Intrinsics.checkNotNullParameter(changes, "changes");
        this.changes = changes;
        this.internalPointerEvent = internalPointerEvent;
        MotionEvent motionEvent$ui_release = getMotionEvent$ui_release();
        this.buttons = PointerButtons.m3146constructorimpl(motionEvent$ui_release != null ? motionEvent$ui_release.getButtonState() : 0);
        MotionEvent motionEvent$ui_release2 = getMotionEvent$ui_release();
        this.keyboardModifiers = PointerKeyboardModifiers.m3270constructorimpl(motionEvent$ui_release2 != null ? motionEvent$ui_release2.getMetaState() : 0);
        this.type = m3152calculatePointerEventType7fucELk();
    }

    /* renamed from: calculatePointerEventType-7fucELk  reason: not valid java name */
    private final int m3152calculatePointerEventType7fucELk() {
        MotionEvent motionEvent$ui_release = getMotionEvent$ui_release();
        if (motionEvent$ui_release != null) {
            int actionMasked = motionEvent$ui_release.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked != 2) {
                        switch (actionMasked) {
                            case 5:
                                break;
                            case 6:
                                break;
                            case 7:
                                break;
                            case 8:
                                return PointerEventType.Companion.m3171getScroll7fucELk();
                            case 9:
                                return PointerEventType.Companion.m3166getEnter7fucELk();
                            case 10:
                                return PointerEventType.Companion.m3167getExit7fucELk();
                            default:
                                return PointerEventType.Companion.m3172getUnknown7fucELk();
                        }
                    }
                    return PointerEventType.Companion.m3168getMove7fucELk();
                }
                return PointerEventType.Companion.m3170getRelease7fucELk();
            }
            return PointerEventType.Companion.m3169getPress7fucELk();
        }
        List<PointerInputChange> list = this.changes;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            PointerInputChange pointerInputChange = list.get(i10);
            if (PointerEventKt.changedToUpIgnoreConsumed(pointerInputChange)) {
                return PointerEventType.Companion.m3170getRelease7fucELk();
            }
            if (PointerEventKt.changedToDownIgnoreConsumed(pointerInputChange)) {
                return PointerEventType.Companion.m3169getPress7fucELk();
            }
        }
        return PointerEventType.Companion.m3168getMove7fucELk();
    }

    @NotNull
    public final List<PointerInputChange> component1() {
        return this.changes;
    }

    @NotNull
    public final PointerEvent copy(@NotNull List<PointerInputChange> changes, @Nullable MotionEvent motionEvent) {
        boolean z10;
        Intrinsics.checkNotNullParameter(changes, "changes");
        if (motionEvent == null) {
            return new PointerEvent(changes, null);
        }
        if (Intrinsics.areEqual(motionEvent, getMotionEvent$ui_release())) {
            return new PointerEvent(changes, this.internalPointerEvent);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = changes.size();
        for (int i10 = 0; i10 < size; i10++) {
            PointerInputChange pointerInputChange = changes.get(i10);
            linkedHashMap.put(PointerId.m3192boximpl(pointerInputChange.m3207getIdJ3iCeTQ()), pointerInputChange);
        }
        ArrayList arrayList = new ArrayList(changes.size());
        int size2 = changes.size();
        int i11 = 0;
        while (i11 < size2) {
            PointerInputChange pointerInputChange2 = changes.get(i11);
            long m3207getIdJ3iCeTQ = pointerInputChange2.m3207getIdJ3iCeTQ();
            long uptimeMillis = pointerInputChange2.getUptimeMillis();
            long m3208getPositionF1C5BW0 = pointerInputChange2.m3208getPositionF1C5BW0();
            long m3208getPositionF1C5BW02 = pointerInputChange2.m3208getPositionF1C5BW0();
            boolean pressed = pointerInputChange2.getPressed();
            int m3211getTypeT8wyACA = pointerInputChange2.m3211getTypeT8wyACA();
            InternalPointerEvent internalPointerEvent = this.internalPointerEvent;
            int i12 = size2;
            if (internalPointerEvent != null) {
                z10 = true;
                if (internalPointerEvent.m3142issuesEnterExitEvent0FcD4WY(pointerInputChange2.m3207getIdJ3iCeTQ())) {
                    arrayList.add(new PointerInputEventData(m3207getIdJ3iCeTQ, uptimeMillis, m3208getPositionF1C5BW0, m3208getPositionF1C5BW02, pressed, m3211getTypeT8wyACA, z10, null, 0L, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, null));
                    i11++;
                    size2 = i12;
                }
            }
            z10 = false;
            arrayList.add(new PointerInputEventData(m3207getIdJ3iCeTQ, uptimeMillis, m3208getPositionF1C5BW0, m3208getPositionF1C5BW02, pressed, m3211getTypeT8wyACA, z10, null, 0L, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, null));
            i11++;
            size2 = i12;
        }
        return new PointerEvent(changes, new InternalPointerEvent(linkedHashMap, new PointerInputEvent(motionEvent.getEventTime(), arrayList, motionEvent)));
    }

    /* renamed from: getButtons-ry648PA  reason: not valid java name */
    public final int m3153getButtonsry648PA() {
        return this.buttons;
    }

    @NotNull
    public final List<PointerInputChange> getChanges() {
        return this.changes;
    }

    @Nullable
    public final InternalPointerEvent getInternalPointerEvent$ui_release() {
        return this.internalPointerEvent;
    }

    /* renamed from: getKeyboardModifiers-k7X9c1A  reason: not valid java name */
    public final int m3154getKeyboardModifiersk7X9c1A() {
        return this.keyboardModifiers;
    }

    @Nullable
    public final MotionEvent getMotionEvent$ui_release() {
        InternalPointerEvent internalPointerEvent = this.internalPointerEvent;
        if (internalPointerEvent != null) {
            return internalPointerEvent.getMotionEvent();
        }
        return null;
    }

    /* renamed from: getType-7fucELk  reason: not valid java name */
    public final int m3155getType7fucELk() {
        return this.type;
    }

    /* renamed from: setType-EhbLWgg$ui_release  reason: not valid java name */
    public final void m3156setTypeEhbLWgg$ui_release(int i10) {
        this.type = i10;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PointerEvent(@NotNull List<PointerInputChange> changes) {
        this(changes, null);
        Intrinsics.checkNotNullParameter(changes, "changes");
    }
}
