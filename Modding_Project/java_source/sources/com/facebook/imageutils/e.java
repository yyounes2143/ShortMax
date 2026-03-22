package com.facebook.imageutils;

import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HeifExifUtil.kt */
@Metadata
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f16073a = new e();

    private e() {
    }

    public static final int a(@Nullable InputStream inputStream) {
        if (inputStream == null) {
            l2.a.c("HeifExifUtil", "Trying to read Heif Exif from null inputStream -> ignoring");
            return 0;
        }
        try {
            return new ExifInterface(inputStream).getAttributeInt(ExifInterface.TAG_ORIENTATION, 1);
        } catch (IOException e10) {
            l2.a.d("HeifExifUtil", "Failed reading Heif Exif orientation -> ignoring", e10);
            return 0;
        }
    }
}
