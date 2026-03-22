package com.google.android.exoplayer2.upstream;

import a7.e;
import a7.k;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import b7.s0;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
/* loaded from: classes4.dex */
public final class RawResourceDataSource extends e {

    /* renamed from: e  reason: collision with root package name */
    private final Resources f19099e;

    /* renamed from: f  reason: collision with root package name */
    private final String f19100f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Uri f19101g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private AssetFileDescriptor f19102h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private InputStream f19103i;

    /* renamed from: j  reason: collision with root package name */
    private long f19104j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f19105k;

    /* loaded from: classes4.dex */
    public static class RawResourceDataSourceException extends DataSourceException {
        public RawResourceDataSourceException(@Nullable String str, @Nullable Throwable th2, int i10) {
            super(str, th2, i10);
        }
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.f19099e = context.getResources();
        this.f19100f = context.getPackageName();
    }

    public static Uri buildRawResourceUri(int i10) {
        return Uri.parse("rawresource:///" + i10);
    }

    @Override // a7.h
    public long b(k kVar) throws RawResourceDataSourceException {
        int parseInt;
        String str;
        Uri uri = kVar.f198a;
        this.f19101g = uri;
        if (!TextUtils.equals(com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource.RAW_RESOURCE_SCHEME, uri.getScheme()) && (!TextUtils.equals("android.resource", uri.getScheme()) || uri.getPathSegments().size() != 1 || !((String) b7.a.e(uri.getLastPathSegment())).matches("\\d+"))) {
            if (TextUtils.equals("android.resource", uri.getScheme())) {
                String str2 = (String) b7.a.e(uri.getPath());
                if (str2.startsWith(DomExceptionUtils.SEPARATOR)) {
                    str2 = str2.substring(1);
                }
                String host = uri.getHost();
                StringBuilder sb2 = new StringBuilder();
                if (TextUtils.isEmpty(host)) {
                    str = "";
                } else {
                    str = host + ":";
                }
                sb2.append(str);
                sb2.append(str2);
                parseInt = this.f19099e.getIdentifier(sb2.toString(), "raw", this.f19100f);
                if (parseInt == 0) {
                    throw new RawResourceDataSourceException("Resource not found.", null, 2005);
                }
            } else {
                throw new RawResourceDataSourceException("URI must either use scheme rawresource or android.resource", null, 1004);
            }
        } else {
            try {
                parseInt = Integer.parseInt((String) b7.a.e(uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new RawResourceDataSourceException("Resource identifier must be an integer.", null, 1004);
            }
        }
        f(kVar);
        try {
            AssetFileDescriptor openRawResourceFd = this.f19099e.openRawResourceFd(parseInt);
            this.f19102h = openRawResourceFd;
            if (openRawResourceFd != null) {
                long length = openRawResourceFd.getLength();
                FileInputStream fileInputStream = new FileInputStream(openRawResourceFd.getFileDescriptor());
                this.f19103i = fileInputStream;
                int i10 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
                if (i10 != 0) {
                    try {
                        if (kVar.f204g > length) {
                            throw new RawResourceDataSourceException(null, null, 2008);
                        }
                    } catch (RawResourceDataSourceException e10) {
                        throw e10;
                    } catch (IOException e11) {
                        throw new RawResourceDataSourceException(null, e11, 2000);
                    }
                }
                long startOffset = openRawResourceFd.getStartOffset();
                long skip = fileInputStream.skip(kVar.f204g + startOffset) - startOffset;
                if (skip == kVar.f204g) {
                    if (i10 == 0) {
                        FileChannel channel = fileInputStream.getChannel();
                        if (channel.size() == 0) {
                            this.f19104j = -1L;
                        } else {
                            long size = channel.size() - channel.position();
                            this.f19104j = size;
                            if (size < 0) {
                                throw new RawResourceDataSourceException(null, null, 2008);
                            }
                        }
                    } else {
                        long j10 = length - skip;
                        this.f19104j = j10;
                        if (j10 < 0) {
                            throw new DataSourceException(2008);
                        }
                    }
                    long j11 = kVar.f205h;
                    if (j11 != -1) {
                        long j12 = this.f19104j;
                        if (j12 != -1) {
                            j11 = Math.min(j12, j11);
                        }
                        this.f19104j = j11;
                    }
                    this.f19105k = true;
                    g(kVar);
                    long j13 = kVar.f205h;
                    if (j13 == -1) {
                        return this.f19104j;
                    }
                    return j13;
                }
                throw new RawResourceDataSourceException(null, null, 2008);
            }
            throw new RawResourceDataSourceException("Resource is compressed: " + uri, null, 2000);
        } catch (Resources.NotFoundException e12) {
            throw new RawResourceDataSourceException(null, e12, 2005);
        }
    }

    @Override // a7.h
    public void close() throws RawResourceDataSourceException {
        this.f19101g = null;
        try {
            try {
                InputStream inputStream = this.f19103i;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f19103i = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f19102h;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e10) {
                        throw new RawResourceDataSourceException(null, e10, 2000);
                    }
                } finally {
                    this.f19102h = null;
                    if (this.f19105k) {
                        this.f19105k = false;
                        e();
                    }
                }
            } catch (IOException e11) {
                throw new RawResourceDataSourceException(null, e11, 2000);
            }
        } catch (Throwable th2) {
            this.f19103i = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f19102h;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f19102h = null;
                    if (this.f19105k) {
                        this.f19105k = false;
                        e();
                    }
                    throw th2;
                } catch (IOException e12) {
                    throw new RawResourceDataSourceException(null, e12, 2000);
                }
            } finally {
                this.f19102h = null;
                if (this.f19105k) {
                    this.f19105k = false;
                    e();
                }
            }
        }
    }

    @Override // a7.h
    @Nullable
    public Uri getUri() {
        return this.f19101g;
    }

    @Override // a7.f
    public int read(byte[] bArr, int i10, int i11) throws RawResourceDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f19104j;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new RawResourceDataSourceException(null, e10, 2000);
            }
        }
        int read = ((InputStream) s0.j(this.f19103i)).read(bArr, i10, i11);
        if (read == -1) {
            if (this.f19104j == -1) {
                return -1;
            }
            throw new RawResourceDataSourceException("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j11 = this.f19104j;
        if (j11 != -1) {
            this.f19104j = j11 - read;
        }
        d(read);
        return read;
    }
}
