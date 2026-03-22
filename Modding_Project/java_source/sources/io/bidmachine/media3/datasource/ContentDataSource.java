package io.bidmachine.media3.datasource;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import cn.m0;
import en.a;
import en.g;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes8.dex */
public final class ContentDataSource extends a {

    /* renamed from: e  reason: collision with root package name */
    private final ContentResolver f55310e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Uri f55311f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private AssetFileDescriptor f55312g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private FileInputStream f55313h;

    /* renamed from: i  reason: collision with root package name */
    private long f55314i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55315j;

    /* loaded from: classes8.dex */
    public static class ContentDataSourceException extends DataSourceException {
        public ContentDataSourceException(@Nullable IOException iOException, int i10) {
            super(iOException, i10);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f55310e = context.getContentResolver();
    }

    @Override // en.d
    public long b(g gVar) throws ContentDataSourceException {
        AssetFileDescriptor openAssetFileDescriptor;
        int i10 = 2000;
        try {
            Uri normalizeScheme = gVar.f51378a.normalizeScheme();
            this.f55311f = normalizeScheme;
            f(gVar);
            if ("content".equals(normalizeScheme.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                openAssetFileDescriptor = this.f55310e.openTypedAssetFileDescriptor(normalizeScheme, "*/*", bundle);
            } else {
                openAssetFileDescriptor = this.f55310e.openAssetFileDescriptor(normalizeScheme, "r");
            }
            this.f55312g = openAssetFileDescriptor;
            if (openAssetFileDescriptor != null) {
                long length = openAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.f55313h = fileInputStream;
                int i11 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i11 != 0 && gVar.f51384g > length) {
                    throw new ContentDataSourceException(null, 2008);
                }
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(gVar.f51384g + startOffset) - startOffset;
                if (skip == gVar.f51384g) {
                    if (i11 == 0) {
                        FileChannel channel = fileInputStream.getChannel();
                        long size = channel.size();
                        if (size == 0) {
                            this.f55314i = -1L;
                        } else {
                            long position = size - channel.position();
                            this.f55314i = position;
                            if (position < 0) {
                                throw new ContentDataSourceException(null, 2008);
                            }
                        }
                    } else {
                        long j10 = length - skip;
                        this.f55314i = j10;
                        if (j10 < 0) {
                            throw new ContentDataSourceException(null, 2008);
                        }
                    }
                    long j11 = gVar.f51385h;
                    if (j11 != -1) {
                        long j12 = this.f55314i;
                        if (j12 != -1) {
                            j11 = Math.min(j12, j11);
                        }
                        this.f55314i = j11;
                    }
                    this.f55315j = true;
                    g(gVar);
                    long j13 = gVar.f51385h;
                    if (j13 == -1) {
                        return this.f55314i;
                    }
                    return j13;
                }
                throw new ContentDataSourceException(null, 2008);
            }
            throw new ContentDataSourceException(new IOException("Could not open file descriptor for: " + normalizeScheme), 2000);
        } catch (ContentDataSourceException e10) {
            throw e10;
        } catch (IOException e11) {
            if (e11 instanceof FileNotFoundException) {
                i10 = 2005;
            }
            throw new ContentDataSourceException(e11, i10);
        }
    }

    @Override // en.d
    public void close() throws ContentDataSourceException {
        this.f55311f = null;
        try {
            try {
                FileInputStream fileInputStream = this.f55313h;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f55313h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f55312g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e10) {
                        throw new ContentDataSourceException(e10, 2000);
                    }
                } finally {
                    this.f55312g = null;
                    if (this.f55315j) {
                        this.f55315j = false;
                        e();
                    }
                }
            } catch (IOException e11) {
                throw new ContentDataSourceException(e11, 2000);
            }
        } catch (Throwable th2) {
            this.f55313h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f55312g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f55312g = null;
                    if (this.f55315j) {
                        this.f55315j = false;
                        e();
                    }
                    throw th2;
                } catch (IOException e12) {
                    throw new ContentDataSourceException(e12, 2000);
                }
            } finally {
                this.f55312g = null;
                if (this.f55315j) {
                    this.f55315j = false;
                    e();
                }
            }
        }
    }

    @Override // en.d
    @Nullable
    public Uri getUri() {
        return this.f55311f;
    }

    @Override // zm.h
    public int read(byte[] bArr, int i10, int i11) throws ContentDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f55314i;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new ContentDataSourceException(e10, 2000);
            }
        }
        int read = ((FileInputStream) m0.i(this.f55313h)).read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        long j11 = this.f55314i;
        if (j11 != -1) {
            this.f55314i = j11 - read;
        }
        d(read);
        return read;
    }
}
