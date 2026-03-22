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
/* compiled from: VisibilityState.kt */
@Metadata
/* loaded from: classes3.dex */
public final class VisibilityState {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ VisibilityState[] $VALUES;
    @NotNull
    public static final Companion Companion;
    @NotNull
    private static final VisibilityState[] VALUES;
    private final int value;
    public static final VisibilityState UNKNOWN = new VisibilityState(GrsBaseInfo.CountryCodeSource.UNKNOWN, 0, -1);
    public static final VisibilityState VISIBLE = new VisibilityState("VISIBLE", 1, 1);
    public static final VisibilityState INVISIBLE = new VisibilityState("INVISIBLE", 2, 2);

    /* compiled from: VisibilityState.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nVisibilityState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisibilityState.kt\ncom/facebook/fresco/ui/common/VisibilityState$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,21:1\n1310#2,2:22\n*S KotlinDebug\n*F\n+ 1 VisibilityState.kt\ncom/facebook/fresco/ui/common/VisibilityState$Companion\n*L\n18#1:22,2\n*E\n"})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final VisibilityState fromInt(int i10) {
            VisibilityState[] visibilityStateArr;
            for (VisibilityState visibilityState : VisibilityState.VALUES) {
                if (visibilityState.getValue() == i10) {
                    return visibilityState;
                }
            }
            return null;
        }

        private Companion() {
        }
    }

    private static final /* synthetic */ VisibilityState[] $values() {
        return new VisibilityState[]{UNKNOWN, VISIBLE, INVISIBLE};
    }

    static {
        VisibilityState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
        Companion = new Companion(null);
        VALUES = values();
    }

    private VisibilityState(String str, int i10, int i11) {
        this.value = i11;
    }

    @NotNull
    public static a<VisibilityState> getEntries() {
        return $ENTRIES;
    }

    public static VisibilityState valueOf(String str) {
        return (VisibilityState) Enum.valueOf(VisibilityState.class, str);
    }

    public static VisibilityState[] values() {
        return (VisibilityState[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }
}
