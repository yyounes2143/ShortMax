package com.unity3d.ads.core.configuration;

import com.unity3d.services.core.misc.JsonStorage;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MediationInitBlobMetadataReader.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MediationInitBlobMetadataReader extends MetadataReader<String> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String MEDIATION_UADS_INIT_BLOB = "mediation.uads_init_blob.value";

    /* compiled from: MediationInitBlobMetadataReader.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediationInitBlobMetadataReader(@NotNull JsonStorage jsonStorage) {
        super(jsonStorage, MEDIATION_UADS_INIT_BLOB);
        Intrinsics.checkNotNullParameter(jsonStorage, "jsonStorage");
    }
}
