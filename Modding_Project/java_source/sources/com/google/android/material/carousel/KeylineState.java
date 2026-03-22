package com.google.android.material.carousel;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.animation.AnimationUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class KeylineState {
    private final int firstFocalKeylineIndex;
    private final float itemSize;
    private final List<Keyline> keylines;
    private final int lastFocalKeylineIndex;

    /* loaded from: classes5.dex */
    static final class Builder {
        private static final int NO_INDEX = -1;
        private static final float UNKNOWN_LOC = Float.MIN_VALUE;
        private final float availableSpace;
        private final float itemSize;
        private Keyline tmpFirstFocalKeyline;
        private Keyline tmpLastFocalKeyline;
        private final List<Keyline> tmpKeylines = new ArrayList();
        private int firstFocalKeylineIndex = -1;
        private int lastFocalKeylineIndex = -1;
        private float lastKeylineMaskedSize = 0.0f;
        private int latestAnchorKeylineIndex = -1;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Builder(float f10, float f11) {
            this.itemSize = f10;
            this.availableSpace = f11;
        }

        private static float calculateKeylineLocationForItemPosition(float f10, float f11, int i10, int i11) {
            return (f10 - (i10 * f11)) + (i11 * f11);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public Builder addAnchorKeyline(float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, float f12) {
            return addKeyline(f10, f11, f12, false, true);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public Builder addKeyline(float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, float f12, boolean z10) {
            return addKeyline(f10, f11, f12, z10, false);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public Builder addKeylineRange(float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, float f12, int i10) {
            return addKeylineRange(f10, f11, f12, i10, false);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public KeylineState build() {
            if (this.tmpFirstFocalKeyline != null) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < this.tmpKeylines.size(); i10++) {
                    Keyline keyline = this.tmpKeylines.get(i10);
                    arrayList.add(new Keyline(calculateKeylineLocationForItemPosition(this.tmpFirstFocalKeyline.locOffset, this.itemSize, this.firstFocalKeylineIndex, i10), keyline.locOffset, keyline.mask, keyline.maskedItemSize, keyline.isAnchor, keyline.cutoff, keyline.leftOrTopPaddingShift, keyline.rightOrBottomPaddingShift));
                }
                return new KeylineState(this.itemSize, arrayList, this.firstFocalKeylineIndex, this.lastFocalKeylineIndex);
            }
            throw new IllegalStateException("There must be a keyline marked as focal.");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public Builder addKeyline(float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, float f12) {
            return addKeyline(f10, f11, f12, false);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public Builder addKeylineRange(float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, float f12, int i10, boolean z10) {
            if (i10 > 0 && f12 > 0.0f) {
                for (int i11 = 0; i11 < i10; i11++) {
                    addKeyline((i11 * f12) + f10, f11, f12, z10);
                }
            }
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public Builder addKeyline(float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, float f12, boolean z10, boolean z11, float f13, float f14, float f15) {
            if (f12 <= 0.0f) {
                return this;
            }
            if (z11) {
                if (!z10) {
                    int i10 = this.latestAnchorKeylineIndex;
                    if (i10 != -1 && i10 != 0) {
                        throw new IllegalArgumentException("Anchor keylines must be either the first or last keyline.");
                    }
                    this.latestAnchorKeylineIndex = this.tmpKeylines.size();
                } else {
                    throw new IllegalArgumentException("Anchor keylines cannot be focal.");
                }
            }
            Keyline keyline = new Keyline(Float.MIN_VALUE, f10, f11, f12, z11, f13, f14, f15);
            if (z10) {
                if (this.tmpFirstFocalKeyline == null) {
                    this.tmpFirstFocalKeyline = keyline;
                    this.firstFocalKeylineIndex = this.tmpKeylines.size();
                }
                if (this.lastFocalKeylineIndex != -1 && this.tmpKeylines.size() - this.lastFocalKeylineIndex > 1) {
                    throw new IllegalArgumentException("Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines.");
                }
                if (f12 == this.tmpFirstFocalKeyline.maskedItemSize) {
                    this.tmpLastFocalKeyline = keyline;
                    this.lastFocalKeylineIndex = this.tmpKeylines.size();
                } else {
                    throw new IllegalArgumentException("Keylines that are marked as focal must all have the same masked item size.");
                }
            } else if (this.tmpFirstFocalKeyline == null && keyline.maskedItemSize < this.lastKeylineMaskedSize) {
                throw new IllegalArgumentException("Keylines before the first focal keyline must be ordered by incrementing masked item size.");
            } else {
                if (this.tmpLastFocalKeyline != null && keyline.maskedItemSize > this.lastKeylineMaskedSize) {
                    throw new IllegalArgumentException("Keylines after the last focal keyline must be ordered by decreasing masked item size.");
                }
            }
            this.lastKeylineMaskedSize = keyline.maskedItemSize;
            this.tmpKeylines.add(keyline);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @NonNull
        public Builder addKeyline(float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, float f12, boolean z10, boolean z11, float f13) {
            return addKeyline(f10, f11, f12, z10, z11, f13, 0.0f, 0.0f);
        }

        @NonNull
        Builder addKeyline(float f10, @FloatRange(from = 0.0d, to = 1.0d) float f11, float f12, boolean z10, boolean z11) {
            float f13;
            float f14 = f12 / 2.0f;
            float f15 = f10 - f14;
            float f16 = f14 + f10;
            float f17 = this.availableSpace;
            if (f16 > f17) {
                f13 = Math.abs(f16 - Math.max(f16 - f12, f17));
            } else {
                f13 = 0.0f;
                if (f15 < 0.0f) {
                    f13 = Math.abs(f15 - Math.min(f15 + f12, 0.0f));
                }
            }
            return addKeyline(f10, f11, f12, z10, z11, f13);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class Keyline {
        final float cutoff;
        final boolean isAnchor;
        final float leftOrTopPaddingShift;
        final float loc;
        final float locOffset;
        final float mask;
        final float maskedItemSize;
        final float rightOrBottomPaddingShift;

        Keyline(float f10, float f11, float f12, float f13) {
            this(f10, f11, f12, f13, false, 0.0f, 0.0f, 0.0f);
        }

        static Keyline lerp(Keyline keyline, Keyline keyline2, @FloatRange(from = 0.0d, to = 1.0d) float f10) {
            return new Keyline(AnimationUtils.lerp(keyline.loc, keyline2.loc, f10), AnimationUtils.lerp(keyline.locOffset, keyline2.locOffset, f10), AnimationUtils.lerp(keyline.mask, keyline2.mask, f10), AnimationUtils.lerp(keyline.maskedItemSize, keyline2.maskedItemSize, f10));
        }

        Keyline(float f10, float f11, float f12, float f13, boolean z10, float f14, float f15, float f16) {
            this.loc = f10;
            this.locOffset = f11;
            this.mask = f12;
            this.maskedItemSize = f13;
            this.isAnchor = z10;
            this.cutoff = f14;
            this.leftOrTopPaddingShift = f15;
            this.rightOrBottomPaddingShift = f16;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static KeylineState lerp(KeylineState keylineState, KeylineState keylineState2, float f10) {
        if (keylineState.getItemSize() == keylineState2.getItemSize()) {
            List<Keyline> keylines = keylineState.getKeylines();
            List<Keyline> keylines2 = keylineState2.getKeylines();
            if (keylines.size() == keylines2.size()) {
                ArrayList arrayList = new ArrayList();
                for (int i10 = 0; i10 < keylineState.getKeylines().size(); i10++) {
                    arrayList.add(Keyline.lerp(keylines.get(i10), keylines2.get(i10), f10));
                }
                return new KeylineState(keylineState.getItemSize(), arrayList, AnimationUtils.lerp(keylineState.getFirstFocalKeylineIndex(), keylineState2.getFirstFocalKeylineIndex(), f10), AnimationUtils.lerp(keylineState.getLastFocalKeylineIndex(), keylineState2.getLastFocalKeylineIndex(), f10));
            }
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same number of keylines.");
        }
        throw new IllegalArgumentException("Keylines being linearly interpolated must have the same item size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static KeylineState reverse(KeylineState keylineState, float f10) {
        boolean z10;
        Builder builder = new Builder(keylineState.getItemSize(), f10);
        float f11 = (f10 - keylineState.getLastKeyline().locOffset) - (keylineState.getLastKeyline().maskedItemSize / 2.0f);
        for (int size = keylineState.getKeylines().size() - 1; size >= 0; size--) {
            Keyline keyline = keylineState.getKeylines().get(size);
            float f12 = f11 + (keyline.maskedItemSize / 2.0f);
            if (size >= keylineState.getFirstFocalKeylineIndex() && size <= keylineState.getLastFocalKeylineIndex()) {
                z10 = true;
            } else {
                z10 = false;
            }
            builder.addKeyline(f12, keyline.mask, keyline.maskedItemSize, z10, keyline.isAnchor);
            f11 += keyline.maskedItemSize;
        }
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Keyline getFirstFocalKeyline() {
        return this.keylines.get(this.firstFocalKeylineIndex);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFirstFocalKeylineIndex() {
        return this.firstFocalKeylineIndex;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Keyline getFirstKeyline() {
        return this.keylines.get(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Keyline getFirstNonAnchorKeyline() {
        for (int i10 = 0; i10 < this.keylines.size(); i10++) {
            Keyline keyline = this.keylines.get(i10);
            if (!keyline.isAnchor) {
                return keyline;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Keyline> getFocalKeylines() {
        return this.keylines.subList(this.firstFocalKeylineIndex, this.lastFocalKeylineIndex + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getItemSize() {
        return this.itemSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Keyline> getKeylines() {
        return this.keylines;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Keyline getLastFocalKeyline() {
        return this.keylines.get(this.lastFocalKeylineIndex);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getLastFocalKeylineIndex() {
        return this.lastFocalKeylineIndex;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Keyline getLastKeyline() {
        List<Keyline> list = this.keylines;
        return list.get(list.size() - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Keyline getLastNonAnchorKeyline() {
        for (int size = this.keylines.size() - 1; size >= 0; size--) {
            Keyline keyline = this.keylines.get(size);
            if (!keyline.isAnchor) {
                return keyline;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNumberOfNonAnchorKeylines() {
        int i10 = 0;
        for (Keyline keyline : this.keylines) {
            if (keyline.isAnchor) {
                i10++;
            }
        }
        return this.keylines.size() - i10;
    }

    private KeylineState(float f10, List<Keyline> list, int i10, int i11) {
        this.itemSize = f10;
        this.keylines = Collections.unmodifiableList(list);
        this.firstFocalKeylineIndex = i10;
        this.lastFocalKeylineIndex = i11;
    }
}
