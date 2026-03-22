package com.google.android.exoplayer2.upstream;

import a7.e;
import a7.k;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import b7.s0;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes4.dex */
public final class ContentDataSource extends e {

    /* renamed from: e  reason: collision with root package name */
    private final ContentResolver f19061e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Uri f19062f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private AssetFileDescriptor f19063g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private FileInputStream f19064h;

    /* renamed from: i  reason: collision with root package name */
    private long f19065i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f19066j;

    /* loaded from: classes4.dex */
    public static class ContentDataSourceException extends DataSourceException {
        public ContentDataSourceException(@Nullable IOException iOException, int i10) {
            super(iOException, i10);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f19061e = context.getContentResolver();
    }

    @Override // a7.h
    public long b(k kVar) throws ContentDataSourceException {
        AssetFileDescriptor openAssetFileDescriptor;
        int i10 = 2000;
        try {
            Uri uri = kVar.f198a;
            this.f19062f = uri;
            f(kVar);
            if ("content".equals(kVar.f198a.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                openAssetFileDescriptor = this.f19061e.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                openAssetFileDescriptor = this.f19061e.openAssetFileDescriptor(uri, "r");
            }
            this.f19063g = openAssetFileDescriptor;
            if (openAssetFileDescriptor != null) {
                long length = openAssetFileDescriptor.getLength();
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.f19064h = fileInputStream;
                int i11 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i11 != 0 && kVar.f204g > length) {
                    throw new ContentDataSourceException(null, 2008);
                }
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(kVar.f204g + startOffset) - startOffset;
                if (skip == kVar.f204g) {
                    if (i11 == 0) {
                        FileChannel channel = fileInputStream.getChannel();
                        long size = channel.size();
                        if (size == 0) {
                            this.f19065i = -1L;
                        } else {
                            long position = size - channel.position();
                            this.f19065i = position;
                            if (position < 0) {
                                throw new ContentDataSourceException(null, 2008);
                            }
                        }
                    } else {
                        long j10 = length - skip;
                        this.f19065i = j10;
                        if (j10 < 0) {
                            throw new ContentDataSourceException(null, 2008);
                        }
                    }
                    long j11 = kVar.f205h;
                    if (j11 != -1) {
                        long j12 = this.f19065i;
                        if (j12 != -1) {
                            j11 = Math.min(j12, j11);
                        }
                        this.f19065i = j11;
                    }
                    this.f19066j = true;
                    g(kVar);
                    long j13 = kVar.f205h;
                    if (j13 == -1) {
                        return this.f19065i;
                    }
                    return j13;
                }
                throw new ContentDataSourceException(null, 2008);
            }
            throw new ContentDataSourceException(new IOException("Could not open file descriptor for: " + uri), 2000);
        } catch (ContentDataSourceException e10) {
            throw e10;
        } catch (IOException e11) {
            if (e11 instanceof FileNotFoundException) {
                i10 = 2005;
            }
            throw new ContentDataSourceException(e11, i10);
        }
    }

    @Override // a7.h
    public void close() throws ContentDataSourceException {
        this.f19062f = null;
        try {
            try {
                FileInputStream fileInputStream = this.f19064h;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                this.f19064h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f19063g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e10) {
                        throw new ContentDataSourceException(e10, 2000);
                    }
                } finally {
                    this.f19063g = null;
                    if (this.f19066j) {
                        this.f19066j = false;
                        e();
                    }
                }
            } catch (IOException e11) {
                throw new ContentDataSourceException(e11, 2000);
            }
        } catch (Throwable th2) {
            this.f19064h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f19063g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f19063g = null;
                    if (this.f19066j) {
                        this.f19066j = false;
                        e();
                    }
                    throw th2;
                } catch (IOException e12) {
                    throw new ContentDataSourceException(e12, 2000);
                }
            } finally {
                this.f19063g = null;
                if (this.f19066j) {
                    this.f19066j = false;
                    e();
                }
            }
        }
    }

    @Override // a7.h
    @Nullable
    public Uri getUri() {
        return this.f19062f;
    }

    @Override // a7.f
    public int read(byte[] bArr, int i10, int i11) throws ContentDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f19065i;
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
        int read = ((FileInputStream) s0.j(this.f19064h)).read(bArr, i10, i11);
        if (read == -1) {
            return -1;
        }
        long j11 = this.f19065i;
        if (j11 != -1) {
            this.f19065i = j11 - read;
        }
        d(read);
        return read;
    }
}
