package com.unity3d.ads.core.configuration;

import com.unity3d.services.core.misc.JsonStorage;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: MetadataReader.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMetadataReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n*L\n1#1,24:1\n8#1,6:25\n*S KotlinDebug\n*F\n+ 1 MetadataReader.kt\ncom/unity3d/ads/core/configuration/MetadataReader\n*L\n17#1:25,6\n*E\n"})
/* loaded from: classes7.dex */
public abstract class MetadataReader<T> {
    @NotNull
    private final JsonStorage jsonStorage;
    @NotNull
    private final String key;

    public MetadataReader(@NotNull JsonStorage jsonStorage, @NotNull String key) {
        Intrinsics.checkNotNullParameter(jsonStorage, "jsonStorage");
        Intrinsics.checkNotNullParameter(key, "key");
        this.jsonStorage = jsonStorage;
        this.key = key;
    }

    public static /* synthetic */ Object read$default(MetadataReader metadataReader, Object obj, int i10, Object obj2) {
        if (obj2 == null) {
            if ((i10 & 1) != 0) {
                obj = null;
            }
            Object obj3 = metadataReader.getJsonStorage().get(metadataReader.getKey());
            if (obj3 != null) {
                Intrinsics.reifiedOperationMarker(3, "T");
                return obj3;
            }
            return obj;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: read");
    }

    public static /* synthetic */ Object readAndDelete$default(MetadataReader metadataReader, Object obj, int i10, Object obj2) {
        if (obj2 == null) {
            if ((i10 & 1) != 0) {
                obj = null;
            }
            Object obj3 = metadataReader.getJsonStorage().get(metadataReader.getKey());
            if (obj3 != null) {
                Intrinsics.checkNotNullExpressionValue(obj3, "get(key)");
                Intrinsics.reifiedOperationMarker(3, "T");
                obj = obj3;
            }
            Object obj4 = metadataReader.getJsonStorage().get(metadataReader.getKey());
            if (obj4 != null) {
                Intrinsics.checkNotNullExpressionValue(obj4, "get(key)");
                metadataReader.getJsonStorage().delete(metadataReader.getKey());
            }
            return obj;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readAndDelete");
    }

    @NotNull
    public final JsonStorage getJsonStorage() {
        return this.jsonStorage;
    }

    @NotNull
    public final String getKey() {
        return this.key;
    }

    public final /* synthetic */ <T> T read(T t10) {
        T t11 = (T) getJsonStorage().get(getKey());
        if (t11 != null) {
            Intrinsics.reifiedOperationMarker(3, "T");
            return t11;
        }
        return t10;
    }

    public final /* synthetic */ <T> T readAndDelete(T t10) {
        Object obj = getJsonStorage().get(getKey());
        if (obj != null) {
            Intrinsics.checkNotNullExpressionValue(obj, "get(key)");
            Intrinsics.reifiedOperationMarker(3, "T");
            t10 = obj;
        }
        Object obj2 = getJsonStorage().get(getKey());
        if (obj2 != null) {
            Intrinsics.checkNotNullExpressionValue(obj2, "get(key)");
            getJsonStorage().delete(getKey());
        }
        return t10;
    }
}
