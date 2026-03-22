package androidx.compose.ui.text.font;

import android.content.res.AssetManager;
import android.os.ParcelFileDescriptor;
import androidx.annotation.RequiresApi;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.text.ExperimentalTextApi;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidFont.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidFontKt {
    @Stable
    @ExperimentalTextApi
    @NotNull
    /* renamed from: Font-RetOiIg  reason: not valid java name */
    public static final Font m3726FontRetOiIg(@NotNull File file, @NotNull FontWeight weight, int i10) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(weight, "weight");
        return new AndroidFileFont(file, weight, i10, null);
    }

    /* renamed from: Font-RetOiIg$default  reason: not valid java name */
    public static /* synthetic */ Font m3728FontRetOiIg$default(File file, FontWeight fontWeight, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        if ((i11 & 4) != 0) {
            i10 = FontStyle.Companion.m3780getNormal_LCdwA();
        }
        return m3726FontRetOiIg(file, fontWeight, i10);
    }

    @ms.c
    @ExperimentalTextApi
    @NotNull
    @Stable
    /* renamed from: Font-wCLgNak  reason: not valid java name */
    public static final Font m3729FontwCLgNak(@NotNull AssetManager assetManager, @NotNull String path, @NotNull FontWeight weight, int i10) {
        Intrinsics.checkNotNullParameter(assetManager, "assetManager");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(weight, "weight");
        return new AndroidAssetFont(assetManager, path, weight, i10, null);
    }

    /* renamed from: Font-wCLgNak$default  reason: not valid java name */
    public static /* synthetic */ Font m3731FontwCLgNak$default(AssetManager assetManager, String str, FontWeight fontWeight, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        if ((i11 & 8) != 0) {
            i10 = FontStyle.Companion.m3780getNormal_LCdwA();
        }
        return m3729FontwCLgNak(assetManager, str, fontWeight, i10);
    }

    @ExperimentalTextApi
    @NotNull
    @Stable
    @RequiresApi(26)
    /* renamed from: Font-RetOiIg  reason: not valid java name */
    public static final Font m3725FontRetOiIg(@NotNull ParcelFileDescriptor fileDescriptor, @NotNull FontWeight weight, int i10) {
        Intrinsics.checkNotNullParameter(fileDescriptor, "fileDescriptor");
        Intrinsics.checkNotNullParameter(weight, "weight");
        return new AndroidFileDescriptorFont(fileDescriptor, weight, i10, null);
    }

    @Stable
    @ExperimentalTextApi
    @NotNull
    /* renamed from: Font-wCLgNak  reason: not valid java name */
    public static final Font m3730FontwCLgNak(@NotNull String path, @NotNull AssetManager assetManager, @NotNull FontWeight weight, int i10) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(assetManager, "assetManager");
        Intrinsics.checkNotNullParameter(weight, "weight");
        return new AndroidAssetFont(assetManager, path, weight, i10, null);
    }

    /* renamed from: Font-RetOiIg$default  reason: not valid java name */
    public static /* synthetic */ Font m3727FontRetOiIg$default(ParcelFileDescriptor parcelFileDescriptor, FontWeight fontWeight, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        if ((i11 & 4) != 0) {
            i10 = FontStyle.Companion.m3780getNormal_LCdwA();
        }
        return m3725FontRetOiIg(parcelFileDescriptor, fontWeight, i10);
    }

    /* renamed from: Font-wCLgNak$default  reason: not valid java name */
    public static /* synthetic */ Font m3732FontwCLgNak$default(String str, AssetManager assetManager, FontWeight fontWeight, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        if ((i11 & 8) != 0) {
            i10 = FontStyle.Companion.m3780getNormal_LCdwA();
        }
        return m3730FontwCLgNak(str, assetManager, fontWeight, i10);
    }
}
