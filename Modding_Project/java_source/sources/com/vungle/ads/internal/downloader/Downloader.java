package com.vungle.ads.internal.downloader;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Downloader.kt */
@Metadata
/* loaded from: classes7.dex */
public interface Downloader {

    /* compiled from: Downloader.kt */
    @Metadata
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes7.dex */
    public @interface NetworkType {
        @NotNull
        public static final Companion Companion = Companion.$$INSTANCE;

        /* compiled from: Downloader.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            private static int CELLULAR = 1;
            private static int WIFI = 2;
            private static int ANY = 1 | 2;

            private Companion() {
            }

            public final int getANY() {
                return ANY;
            }

            public final int getCELLULAR() {
                return CELLULAR;
            }

            public final int getWIFI() {
                return WIFI;
            }

            public final void setANY(int i10) {
                ANY = i10;
            }

            public final void setCELLULAR(int i10) {
                CELLULAR = i10;
            }

            public final void setWIFI(int i10) {
                WIFI = i10;
            }
        }
    }

    /* compiled from: Downloader.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class RequestException extends Exception {
        public RequestException(@Nullable String str) {
            super(str);
        }
    }

    void cancel(@Nullable DownloadRequest downloadRequest);

    void cancelAll();

    void download(@Nullable DownloadRequest downloadRequest, @Nullable AssetDownloadListener assetDownloadListener);
}
