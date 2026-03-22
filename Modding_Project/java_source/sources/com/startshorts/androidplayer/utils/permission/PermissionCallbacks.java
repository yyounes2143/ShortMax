package com.startshorts.androidplayer.utils.permission;

import androidx.core.app.ActivityCompat;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PermissionCallbacks.kt */
@Metadata
/* loaded from: classes7.dex */
public interface PermissionCallbacks extends ActivityCompat.OnRequestPermissionsResultCallback {
    void c(int i10, @NotNull List<String> list);

    void d(int i10, @NotNull List<String> list);
}
