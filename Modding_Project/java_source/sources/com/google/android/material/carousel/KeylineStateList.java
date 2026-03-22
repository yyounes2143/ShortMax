package com.google.android.material.carousel;

import androidx.annotation.NonNull;
import androidx.core.math.MathUtils;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.carousel.KeylineState;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class KeylineStateList {
    private static final int NO_INDEX = -1;
    private final KeylineState defaultState;
    private final float endShiftRange;
    private final List<KeylineState> endStateSteps;
    private final float[] endStateStepsInterpolationPoints;
    private final float startShiftRange;
    private final List<KeylineState> startStateSteps;
    private final float[] startStateStepsInterpolationPoints;

    private KeylineStateList(@NonNull KeylineState keylineState, List<KeylineState> list, List<KeylineState> list2) {
        this.defaultState = keylineState;
        this.startStateSteps = Collections.unmodifiableList(list);
        this.endStateSteps = Collections.unmodifiableList(list2);
        float f10 = list.get(list.size() - 1).getFirstKeyline().loc - keylineState.getFirstKeyline().loc;
        this.startShiftRange = f10;
        float f11 = keylineState.getLastKeyline().loc - list2.get(list2.size() - 1).getLastKeyline().loc;
        this.endShiftRange = f11;
        this.startStateStepsInterpolationPoints = getStateStepInterpolationPoints(f10, list, true);
        this.endStateStepsInterpolationPoints = getStateStepInterpolationPoints(f11, list2, false);
    }

    private KeylineState closestStateStepFromInterpolation(List<KeylineState> list, float f10, float[] fArr) {
        float[] stateStepsRange = getStateStepsRange(list, f10, fArr);
        if (stateStepsRange[0] >= 0.5f) {
            return list.get((int) stateStepsRange[2]);
        }
        return list.get((int) stateStepsRange[1]);
    }

    private static int findFirstIndexAfterLastFocalKeylineWithMask(KeylineState keylineState, float f10) {
        for (int lastFocalKeylineIndex = keylineState.getLastFocalKeylineIndex(); lastFocalKeylineIndex < keylineState.getKeylines().size(); lastFocalKeylineIndex++) {
            if (f10 == keylineState.getKeylines().get(lastFocalKeylineIndex).mask) {
                return lastFocalKeylineIndex;
            }
        }
        return keylineState.getKeylines().size() - 1;
    }

    private static int findFirstNonAnchorKeylineIndex(KeylineState keylineState) {
        for (int i10 = 0; i10 < keylineState.getKeylines().size(); i10++) {
            if (!keylineState.getKeylines().get(i10).isAnchor) {
                return i10;
            }
        }
        return -1;
    }

    private static int findLastIndexBeforeFirstFocalKeylineWithMask(KeylineState keylineState, float f10) {
        for (int firstFocalKeylineIndex = keylineState.getFirstFocalKeylineIndex() - 1; firstFocalKeylineIndex >= 0; firstFocalKeylineIndex--) {
            if (f10 == keylineState.getKeylines().get(firstFocalKeylineIndex).mask) {
                return firstFocalKeylineIndex;
            }
        }
        return 0;
    }

    private static int findLastNonAnchorKeylineIndex(KeylineState keylineState) {
        for (int size = keylineState.getKeylines().size() - 1; size >= 0; size--) {
            if (!keylineState.getKeylines().get(size).isAnchor) {
                return size;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static KeylineStateList from(Carousel carousel, KeylineState keylineState, float f10, float f11, float f12) {
        return new KeylineStateList(keylineState, getStateStepsStart(carousel, keylineState, f10, f11), getStateStepsEnd(carousel, keylineState, f10, f12));
    }

    private static float[] getStateStepInterpolationPoints(float f10, List<KeylineState> list, boolean z10) {
        float f11;
        float f12;
        int size = list.size();
        float[] fArr = new float[size];
        for (int i10 = 1; i10 < size; i10++) {
            int i11 = i10 - 1;
            KeylineState keylineState = list.get(i11);
            KeylineState keylineState2 = list.get(i10);
            if (z10) {
                f11 = keylineState2.getFirstKeyline().loc - keylineState.getFirstKeyline().loc;
            } else {
                f11 = keylineState.getLastKeyline().loc - keylineState2.getLastKeyline().loc;
            }
            float f13 = f11 / f10;
            if (i10 == size - 1) {
                f12 = 1.0f;
            } else {
                f12 = fArr[i11] + f13;
            }
            fArr[i10] = f12;
        }
        return fArr;
    }

    private static List<KeylineState> getStateStepsEnd(Carousel carousel, KeylineState keylineState, float f10, float f11) {
        int containerHeight;
        int i10;
        ArrayList arrayList = new ArrayList();
        arrayList.add(keylineState);
        int findLastNonAnchorKeylineIndex = findLastNonAnchorKeylineIndex(keylineState);
        if (carousel.isHorizontal()) {
            containerHeight = carousel.getContainerWidth();
        } else {
            containerHeight = carousel.getContainerHeight();
        }
        float f12 = containerHeight;
        if (!isLastFocalItemVisibleAtRightOfContainer(carousel, keylineState) && findLastNonAnchorKeylineIndex != -1) {
            int lastFocalKeylineIndex = findLastNonAnchorKeylineIndex - keylineState.getLastFocalKeylineIndex();
            float f13 = keylineState.getFirstKeyline().locOffset - (keylineState.getFirstKeyline().maskedItemSize / 2.0f);
            if (lastFocalKeylineIndex <= 0 && keylineState.getLastFocalKeyline().cutoff > 0.0f) {
                arrayList.add(shiftKeylinesAndCreateKeylineState(keylineState, f13 - keylineState.getLastFocalKeyline().cutoff, f12));
                return arrayList;
            }
            float f14 = 0.0f;
            int i11 = 0;
            while (i11 < lastFocalKeylineIndex) {
                KeylineState keylineState2 = (KeylineState) arrayList.get(arrayList.size() - 1);
                int i12 = findLastNonAnchorKeylineIndex - i11;
                float f15 = f14 + keylineState.getKeylines().get(i12).cutoff;
                int i13 = i12 + 1;
                if (i13 < keylineState.getKeylines().size()) {
                    i10 = findLastIndexBeforeFirstFocalKeylineWithMask(keylineState2, keylineState.getKeylines().get(i13).mask) + 1;
                } else {
                    i10 = 0;
                }
                int i14 = i11;
                KeylineState moveKeylineAndCreateKeylineState = moveKeylineAndCreateKeylineState(keylineState2, findLastNonAnchorKeylineIndex, i10, f13 - f15, keylineState.getFirstFocalKeylineIndex() + i11 + 1, keylineState.getLastFocalKeylineIndex() + i11 + 1, f12);
                if (i14 == lastFocalKeylineIndex - 1 && f11 > 0.0f) {
                    moveKeylineAndCreateKeylineState = shiftKeylineStateForPadding(moveKeylineAndCreateKeylineState, f11, f12, false, f10);
                }
                arrayList.add(moveKeylineAndCreateKeylineState);
                i11 = i14 + 1;
                f14 = f15;
            }
            return arrayList;
        }
        if (f11 > 0.0f) {
            arrayList.add(shiftKeylineStateForPadding(keylineState, f11, f12, false, f10));
        }
        return arrayList;
    }

    private static float[] getStateStepsRange(List<KeylineState> list, float f10, float[] fArr) {
        int size = list.size();
        float f11 = fArr[0];
        int i10 = 1;
        while (i10 < size) {
            float f12 = fArr[i10];
            if (f10 <= f12) {
                return new float[]{AnimationUtils.lerp(0.0f, 1.0f, f11, f12, f10), (float) (i10 - 1), i10};
            }
            i10++;
            f11 = f12;
        }
        return new float[]{0.0f, 0.0f, 0.0f};
    }

    private static List<KeylineState> getStateStepsStart(Carousel carousel, KeylineState keylineState, float f10, float f11) {
        int containerHeight;
        int i10;
        ArrayList arrayList = new ArrayList();
        arrayList.add(keylineState);
        int findFirstNonAnchorKeylineIndex = findFirstNonAnchorKeylineIndex(keylineState);
        if (carousel.isHorizontal()) {
            containerHeight = carousel.getContainerWidth();
        } else {
            containerHeight = carousel.getContainerHeight();
        }
        float f12 = containerHeight;
        int i11 = 1;
        if (!isFirstFocalItemAtLeftOfContainer(keylineState) && findFirstNonAnchorKeylineIndex != -1) {
            int firstFocalKeylineIndex = keylineState.getFirstFocalKeylineIndex() - findFirstNonAnchorKeylineIndex;
            float f13 = keylineState.getFirstKeyline().locOffset - (keylineState.getFirstKeyline().maskedItemSize / 2.0f);
            if (firstFocalKeylineIndex <= 0 && keylineState.getFirstFocalKeyline().cutoff > 0.0f) {
                arrayList.add(shiftKeylinesAndCreateKeylineState(keylineState, f13 + keylineState.getFirstFocalKeyline().cutoff, f12));
                return arrayList;
            }
            int i12 = 0;
            float f14 = 0.0f;
            while (i12 < firstFocalKeylineIndex) {
                KeylineState keylineState2 = (KeylineState) arrayList.get(arrayList.size() - i11);
                int i13 = findFirstNonAnchorKeylineIndex + i12;
                int size = keylineState.getKeylines().size() - i11;
                float f15 = f14 + keylineState.getKeylines().get(i13).cutoff;
                int i14 = i13 - i11;
                if (i14 >= 0) {
                    i10 = findFirstIndexAfterLastFocalKeylineWithMask(keylineState2, keylineState.getKeylines().get(i14).mask) - i11;
                } else {
                    i10 = size;
                }
                int i15 = i12;
                KeylineState moveKeylineAndCreateKeylineState = moveKeylineAndCreateKeylineState(keylineState2, findFirstNonAnchorKeylineIndex, i10, f13 + f15, (keylineState.getFirstFocalKeylineIndex() - i12) - 1, (keylineState.getLastFocalKeylineIndex() - i12) - 1, f12);
                if (i15 == firstFocalKeylineIndex - 1 && f11 > 0.0f) {
                    moveKeylineAndCreateKeylineState = shiftKeylineStateForPadding(moveKeylineAndCreateKeylineState, f11, f12, true, f10);
                }
                arrayList.add(moveKeylineAndCreateKeylineState);
                i12 = i15 + 1;
                f14 = f15;
                i11 = 1;
            }
            return arrayList;
        }
        if (f11 > 0.0f) {
            arrayList.add(shiftKeylineStateForPadding(keylineState, f11, f12, true, f10));
        }
        return arrayList;
    }

    private static boolean isFirstFocalItemAtLeftOfContainer(KeylineState keylineState) {
        if (keylineState.getFirstFocalKeyline().locOffset - (keylineState.getFirstFocalKeyline().maskedItemSize / 2.0f) >= 0.0f && keylineState.getFirstFocalKeyline() == keylineState.getFirstNonAnchorKeyline()) {
            return true;
        }
        return false;
    }

    private static boolean isLastFocalItemVisibleAtRightOfContainer(Carousel carousel, KeylineState keylineState) {
        int containerHeight = carousel.getContainerHeight();
        if (carousel.isHorizontal()) {
            containerHeight = carousel.getContainerWidth();
        }
        if (keylineState.getLastFocalKeyline().locOffset + (keylineState.getLastFocalKeyline().maskedItemSize / 2.0f) <= containerHeight && keylineState.getLastFocalKeyline() == keylineState.getLastNonAnchorKeyline()) {
            return true;
        }
        return false;
    }

    private static KeylineState lerp(List<KeylineState> list, float f10, float[] fArr) {
        float[] stateStepsRange = getStateStepsRange(list, f10, fArr);
        return KeylineState.lerp(list.get((int) stateStepsRange[1]), list.get((int) stateStepsRange[2]), stateStepsRange[0]);
    }

    private static KeylineState moveKeylineAndCreateKeylineState(KeylineState keylineState, int i10, int i11, float f10, int i12, int i13, float f11) {
        boolean z10;
        ArrayList arrayList = new ArrayList(keylineState.getKeylines());
        arrayList.add(i11, (KeylineState.Keyline) arrayList.remove(i10));
        KeylineState.Builder builder = new KeylineState.Builder(keylineState.getItemSize(), f11);
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            KeylineState.Keyline keyline = (KeylineState.Keyline) arrayList.get(i14);
            float f12 = keyline.maskedItemSize;
            float f13 = f10 + (f12 / 2.0f);
            if (i14 >= i12 && i14 <= i13) {
                z10 = true;
            } else {
                z10 = false;
            }
            builder.addKeyline(f13, keyline.mask, f12, z10, keyline.isAnchor, keyline.cutoff);
            f10 += keyline.maskedItemSize;
        }
        return builder.build();
    }

    private static KeylineState shiftKeylineStateForPadding(KeylineState keylineState, float f10, float f11, boolean z10, float f12) {
        float f13;
        boolean z11;
        float f14;
        float f15;
        ArrayList arrayList = new ArrayList(keylineState.getKeylines());
        KeylineState.Builder builder = new KeylineState.Builder(keylineState.getItemSize(), f11);
        float numberOfNonAnchorKeylines = f10 / keylineState.getNumberOfNonAnchorKeylines();
        if (z10) {
            f13 = f10;
        } else {
            f13 = 0.0f;
        }
        float f16 = f13;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            KeylineState.Keyline keyline = (KeylineState.Keyline) arrayList.get(i10);
            if (keyline.isAnchor) {
                builder.addKeyline(keyline.locOffset, keyline.mask, keyline.maskedItemSize, false, true, keyline.cutoff);
            } else {
                if (i10 >= keylineState.getFirstFocalKeylineIndex() && i10 <= keylineState.getLastFocalKeylineIndex()) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                float f17 = keyline.maskedItemSize - numberOfNonAnchorKeylines;
                float childMaskPercentage = CarouselStrategy.getChildMaskPercentage(f17, keylineState.getItemSize(), f12);
                float f18 = (f17 / 2.0f) + f16;
                float f19 = f18 - keyline.locOffset;
                float f20 = keyline.cutoff;
                if (z10) {
                    f14 = f19;
                } else {
                    f14 = 0.0f;
                }
                if (z10) {
                    f15 = 0.0f;
                } else {
                    f15 = f19;
                }
                builder.addKeyline(f18, childMaskPercentage, f17, z11, false, f20, f14, f15);
                f16 += f17;
            }
        }
        return builder.build();
    }

    private static KeylineState shiftKeylinesAndCreateKeylineState(KeylineState keylineState, float f10, float f11) {
        return moveKeylineAndCreateKeylineState(keylineState, 0, 0, f10, keylineState.getFirstFocalKeylineIndex(), keylineState.getLastFocalKeylineIndex(), f11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KeylineState getDefaultState() {
        return this.defaultState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KeylineState getEndState() {
        List<KeylineState> list = this.endStateSteps;
        return list.get(list.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<Integer, KeylineState> getKeylineStateForPositionMap(int i10, int i11, int i12, boolean z10) {
        int i13;
        int i14;
        int i15;
        float itemSize = this.defaultState.getItemSize();
        HashMap hashMap = new HashMap();
        int i16 = 0;
        int i17 = 0;
        while (true) {
            int i18 = -1;
            if (i16 >= i10) {
                break;
            }
            if (z10) {
                i15 = (i10 - i16) - 1;
            } else {
                i15 = i16;
            }
            float f10 = i15 * itemSize;
            if (!z10) {
                i18 = 1;
            }
            if (f10 * i18 > i12 - this.endShiftRange || i16 >= i10 - this.endStateSteps.size()) {
                Integer valueOf = Integer.valueOf(i15);
                List<KeylineState> list = this.endStateSteps;
                hashMap.put(valueOf, list.get(MathUtils.clamp(i17, 0, list.size() - 1)));
                i17++;
            }
            i16++;
        }
        int i19 = 0;
        for (int i20 = i10 - 1; i20 >= 0; i20--) {
            if (z10) {
                i13 = (i10 - i20) - 1;
            } else {
                i13 = i20;
            }
            float f11 = i13 * itemSize;
            if (z10) {
                i14 = -1;
            } else {
                i14 = 1;
            }
            if (f11 * i14 < i11 + this.startShiftRange || i20 < this.startStateSteps.size()) {
                Integer valueOf2 = Integer.valueOf(i13);
                List<KeylineState> list2 = this.startStateSteps;
                hashMap.put(valueOf2, list2.get(MathUtils.clamp(i19, 0, list2.size() - 1)));
                i19++;
            }
        }
        return hashMap;
    }

    public KeylineState getShiftedState(float f10, float f11, float f12) {
        return getShiftedState(f10, f11, f12, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KeylineState getStartState() {
        List<KeylineState> list = this.startStateSteps;
        return list.get(list.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KeylineState getShiftedState(float f10, float f11, float f12, boolean z10) {
        float lerp;
        List<KeylineState> list;
        float[] fArr;
        float f13 = this.startShiftRange + f11;
        float f14 = f12 - this.endShiftRange;
        float f15 = getStartState().getFirstFocalKeyline().leftOrTopPaddingShift;
        float f16 = getEndState().getLastFocalKeyline().rightOrBottomPaddingShift;
        if (this.startShiftRange == f15) {
            f13 += f15;
        }
        if (this.endShiftRange == f16) {
            f14 -= f16;
        }
        if (f10 < f13) {
            lerp = AnimationUtils.lerp(1.0f, 0.0f, f11, f13, f10);
            list = this.startStateSteps;
            fArr = this.startStateStepsInterpolationPoints;
        } else if (f10 > f14) {
            lerp = AnimationUtils.lerp(0.0f, 1.0f, f14, f12, f10);
            list = this.endStateSteps;
            fArr = this.endStateStepsInterpolationPoints;
        } else {
            return this.defaultState;
        }
        if (z10) {
            return closestStateStepFromInterpolation(list, lerp, fArr);
        }
        return lerp(list, lerp, fArr);
    }
}
