package com.startshorts.androidplayer.ui.view.guide.model;

import android.graphics.RectF;
import android.view.View;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HighLight.kt */
@Metadata
/* loaded from: classes7.dex */
public interface HighLight {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: HighLight.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Shape {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ Shape[] $VALUES;
        public static final Shape CIRCLE = new Shape("CIRCLE", 0);
        public static final Shape RECTANGLE = new Shape("RECTANGLE", 1);
        public static final Shape OVAL = new Shape("OVAL", 2);
        public static final Shape ROUND_RECTANGLE = new Shape("ROUND_RECTANGLE", 3);

        private static final /* synthetic */ Shape[] $values() {
            return new Shape[]{CIRCLE, RECTANGLE, OVAL, ROUND_RECTANGLE};
        }

        static {
            Shape[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private Shape(String str, int i10) {
        }

        @NotNull
        public static ss.a<Shape> getEntries() {
            return $ENTRIES;
        }

        public static Shape valueOf(String str) {
            return (Shape) Enum.valueOf(Shape.class, str);
        }

        public static Shape[] values() {
            return (Shape[]) $VALUES.clone();
        }
    }

    @Nullable
    RectF a(@Nullable View view);

    int b();

    @Nullable
    b getOptions();

    float getRadius();

    @Nullable
    Shape getShape();
}
