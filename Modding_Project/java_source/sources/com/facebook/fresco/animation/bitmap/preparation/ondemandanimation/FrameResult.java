package com.facebook.fresco.animation.bitmap.preparation.ondemandanimation;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FrameLoader.kt */
@Metadata
/* loaded from: classes3.dex */
public final class FrameResult {
    @Nullable
    private final o2.a<Bitmap> bitmapRef;
    @NotNull
    private final FrameType type;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: FrameLoader.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class FrameType {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ FrameType[] $VALUES;
        public static final FrameType SUCCESS = new FrameType("SUCCESS", 0);
        public static final FrameType NEAREST = new FrameType("NEAREST", 1);
        public static final FrameType MISSING = new FrameType("MISSING", 2);

        private static final /* synthetic */ FrameType[] $values() {
            return new FrameType[]{SUCCESS, NEAREST, MISSING};
        }

        static {
            FrameType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private FrameType(String str, int i10) {
        }

        @NotNull
        public static ss.a<FrameType> getEntries() {
            return $ENTRIES;
        }

        public static FrameType valueOf(String str) {
            return (FrameType) Enum.valueOf(FrameType.class, str);
        }

        public static FrameType[] values() {
            return (FrameType[]) $VALUES.clone();
        }
    }

    public FrameResult(@Nullable o2.a<Bitmap> aVar, @NotNull FrameType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.bitmapRef = aVar;
        this.type = type;
    }

    @Nullable
    public final o2.a<Bitmap> getBitmapRef() {
        return this.bitmapRef;
    }

    @NotNull
    public final FrameType getType() {
        return this.type;
    }
}
