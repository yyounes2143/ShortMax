package com.unity3d.ads.core.data.datasource;

import com.unity3d.services.core.misc.JsonStorage;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidMediationDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidMediationDataSource implements MediationDataSource {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String MEDIATION_NAME = "name";
    @NotNull
    public static final String MEDIATION_NAME_KEY = "mediation.name.value";
    @NotNull
    private static final String MEDIATION_STORAGE_NAME = "mediation";
    @NotNull
    private static final String MEDIATION_VALUE = "value";
    @NotNull
    private static final String MEDIATION_VERSION = "version";
    @NotNull
    public static final String MEDIATION_VERSION_KEY = "mediation.version.value";
    @NotNull
    private final JsonStorage storage;

    /* compiled from: AndroidMediationDataSource.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AndroidMediationDataSource(@NotNull JsonStorage storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        this.storage = storage;
    }

    @Override // com.unity3d.ads.core.data.datasource.MediationDataSource
    @Nullable
    public String getName() {
        return (String) this.storage.get(MEDIATION_NAME_KEY);
    }

    @Override // com.unity3d.ads.core.data.datasource.MediationDataSource
    @Nullable
    public String getVersion() {
        return (String) this.storage.get(MEDIATION_VERSION_KEY);
    }
}
