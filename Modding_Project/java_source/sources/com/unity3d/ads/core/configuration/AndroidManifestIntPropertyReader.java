package com.unity3d.ads.core.configuration;

import android.content.Context;
import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidManifestIntPropertyReader.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidManifestIntPropertyReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidManifestIntPropertyReader.kt\ncom/unity3d/ads/core/configuration/AndroidManifestIntPropertyReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,16:1\n1#2:17\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidManifestIntPropertyReader {
    @NotNull
    private final Context context;

    public AndroidManifestIntPropertyReader(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Nullable
    public final Integer getPropertyByName(@NotNull String propertyName) {
        Intrinsics.checkNotNullParameter(propertyName, "propertyName");
        try {
            Bundle bundle = this.context.getPackageManager().getApplicationInfo(this.context.getPackageName(), 128).metaData;
            Integer valueOf = Integer.valueOf(bundle.getInt(propertyName));
            if (!bundle.containsKey(propertyName)) {
                return null;
            }
            return valueOf;
        } catch (Exception unused) {
            return null;
        }
    }
}
