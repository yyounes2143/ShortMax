package com.facebook.fresco.ui.common;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: ImageLoadStatus.kt */
@Metadata
/* loaded from: classes3.dex */
public final class ImageLoadStatus {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ ImageLoadStatus[] $VALUES;
    @NotNull
    public static final Companion Companion;
    @NotNull
    private static final ImageLoadStatus[] VALUES;
    private final int value;
    public static final ImageLoadStatus UNKNOWN = new ImageLoadStatus(GrsBaseInfo.CountryCodeSource.UNKNOWN, 0, -1);
    public static final ImageLoadStatus REQUESTED = new ImageLoadStatus("REQUESTED", 1, 0);
    public static final ImageLoadStatus INTERMEDIATE_AVAILABLE = new ImageLoadStatus("INTERMEDIATE_AVAILABLE", 2, 2);
    public static final ImageLoadStatus SUCCESS = new ImageLoadStatus("SUCCESS", 3, 3);
    public static final ImageLoadStatus ERROR = new ImageLoadStatus("ERROR", 4, 5);
    public static final ImageLoadStatus EMPTY_EVENT = new ImageLoadStatus("EMPTY_EVENT", 5, 7);
    public static final ImageLoadStatus RELEASED = new ImageLoadStatus("RELEASED", 6, 8);

    /* compiled from: ImageLoadStatus.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nImageLoadStatus.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageLoadStatus.kt\ncom/facebook/fresco/ui/common/ImageLoadStatus$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,40:1\n1310#2,2:41\n*S KotlinDebug\n*F\n+ 1 ImageLoadStatus.kt\ncom/facebook/fresco/ui/common/ImageLoadStatus$Companion\n*L\n37#1:41,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final ImageLoadStatus fromInt(int i10) {
            ImageLoadStatus[] imageLoadStatusArr;
            for (ImageLoadStatus imageLoadStatus : ImageLoadStatus.VALUES) {
                if (imageLoadStatus.getValue() == i10) {
                    return imageLoadStatus;
                }
            }
            return null;
        }

        private Companion() {
        }
    }

    /* compiled from: ImageLoadStatus.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ImageLoadStatus.values().length];
            try {
                iArr[ImageLoadStatus.REQUESTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ImageLoadStatus.SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ImageLoadStatus.INTERMEDIATE_AVAILABLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ImageLoadStatus.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ImageLoadStatus.RELEASED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ ImageLoadStatus[] $values() {
        return new ImageLoadStatus[]{UNKNOWN, REQUESTED, INTERMEDIATE_AVAILABLE, SUCCESS, ERROR, EMPTY_EVENT, RELEASED};
    }

    static {
        ImageLoadStatus[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
        Companion = new Companion(null);
        VALUES = values();
    }

    private ImageLoadStatus(String str, int i10, int i11) {
        this.value = i11;
    }

    @NotNull
    public static a<ImageLoadStatus> getEntries() {
        return $ENTRIES;
    }

    public static ImageLoadStatus valueOf(String str) {
        return (ImageLoadStatus) Enum.valueOf(ImageLoadStatus.class, str);
    }

    public static ImageLoadStatus[] values() {
        return (ImageLoadStatus[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }

    @Override // java.lang.Enum
    @NotNull
    public String toString() {
        int i10 = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            return "unknown";
                        }
                        return "released";
                    }
                    return "error";
                }
                return "intermediate_available";
            }
            return "success";
        }
        return "requested";
    }
}
