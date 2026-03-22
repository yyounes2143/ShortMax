package com.google.firebase.sessions;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: SessionEvent.kt */
@Metadata
/* loaded from: classes5.dex */
public final class DataCollectionState implements r8.f {
    private static final /* synthetic */ ss.a $ENTRIES;
    private static final /* synthetic */ DataCollectionState[] $VALUES;
    private final int number;
    public static final DataCollectionState COLLECTION_UNKNOWN = new DataCollectionState("COLLECTION_UNKNOWN", 0, 0);
    public static final DataCollectionState COLLECTION_SDK_NOT_INSTALLED = new DataCollectionState("COLLECTION_SDK_NOT_INSTALLED", 1, 1);
    public static final DataCollectionState COLLECTION_ENABLED = new DataCollectionState("COLLECTION_ENABLED", 2, 2);
    public static final DataCollectionState COLLECTION_DISABLED = new DataCollectionState("COLLECTION_DISABLED", 3, 3);
    public static final DataCollectionState COLLECTION_DISABLED_REMOTE = new DataCollectionState("COLLECTION_DISABLED_REMOTE", 4, 4);
    public static final DataCollectionState COLLECTION_SAMPLED = new DataCollectionState("COLLECTION_SAMPLED", 5, 5);

    private static final /* synthetic */ DataCollectionState[] $values() {
        return new DataCollectionState[]{COLLECTION_UNKNOWN, COLLECTION_SDK_NOT_INSTALLED, COLLECTION_ENABLED, COLLECTION_DISABLED, COLLECTION_DISABLED_REMOTE, COLLECTION_SAMPLED};
    }

    static {
        DataCollectionState[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private DataCollectionState(String str, int i10, int i11) {
        this.number = i11;
    }

    @NotNull
    public static ss.a<DataCollectionState> getEntries() {
        return $ENTRIES;
    }

    public static DataCollectionState valueOf(String str) {
        return (DataCollectionState) Enum.valueOf(DataCollectionState.class, str);
    }

    public static DataCollectionState[] values() {
        return (DataCollectionState[]) $VALUES.clone();
    }

    @Override // r8.f
    public int getNumber() {
        return this.number;
    }
}
