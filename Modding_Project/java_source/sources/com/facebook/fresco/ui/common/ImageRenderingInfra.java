package com.facebook.fresco.ui.common;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: ImageRenderingInfra.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ImageRenderingInfra {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ ImageRenderingInfra[] $VALUES;
    public static final ImageRenderingInfra VITO_V2 = new ImageRenderingInfra("VITO_V2", 0);
    public static final ImageRenderingInfra VITO_V1 = new ImageRenderingInfra("VITO_V1", 1);
    public static final ImageRenderingInfra DRAWEE = new ImageRenderingInfra("DRAWEE", 2);
    public static final ImageRenderingInfra OTHER = new ImageRenderingInfra("OTHER", 3);

    private static final /* synthetic */ ImageRenderingInfra[] $values() {
        return new ImageRenderingInfra[]{VITO_V2, VITO_V1, DRAWEE, OTHER};
    }

    static {
        ImageRenderingInfra[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private ImageRenderingInfra(String str, int i10) {
    }

    @NotNull
    public static a<ImageRenderingInfra> getEntries() {
        return $ENTRIES;
    }

    public static ImageRenderingInfra valueOf(String str) {
        return (ImageRenderingInfra) Enum.valueOf(ImageRenderingInfra.class, str);
    }

    public static ImageRenderingInfra[] values() {
        return (ImageRenderingInfra[]) $VALUES.clone();
    }
}
