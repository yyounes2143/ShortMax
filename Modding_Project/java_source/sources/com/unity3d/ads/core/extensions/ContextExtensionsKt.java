package com.unity3d.ads.core.extensions;

import android.content.Context;
import com.unity3d.services.UnityAdsConstants;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ContextExtensions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ContextExtensionsKt {
    @NotNull
    public static final File unityAdsDataStoreFile(@NotNull Context context, @NotNull String fileName) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        File filesDir = context.getApplicationContext().getFilesDir();
        return new File(filesDir, UnityAdsConstants.Cache.DATASTORE_PATH + fileName);
    }
}
