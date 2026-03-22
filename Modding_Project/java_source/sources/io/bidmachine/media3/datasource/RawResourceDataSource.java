package io.bidmachine.media3.datasource;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import cn.m0;
import en.a;
import en.g;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;
import java.util.List;
/* loaded from: classes8.dex */
public final class RawResourceDataSource extends a {

    /* renamed from: e  reason: collision with root package name */
    private final Context f55328e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private g f55329f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private AssetFileDescriptor f55330g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private InputStream f55331h;

    /* renamed from: i  reason: collision with root package name */
    private long f55332i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f55333j;

    /* loaded from: classes8.dex */
    public static class RawResourceDataSourceException extends DataSourceException {
        @Deprecated
        public RawResourceDataSourceException(String str) {
            super(str, null, 2000);
        }

        public RawResourceDataSourceException(@Nullable String str, @Nullable Throwable th2, int i10) {
            super(str, th2, i10);
        }
    }

    public RawResourceDataSource(Context context) {
        super(false);
        this.f55328e = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i10) {
        return Uri.parse("rawresource:///" + i10);
    }

    private static AssetFileDescriptor h(Context context, g gVar) throws RawResourceDataSourceException {
        String host;
        Resources resourcesForApplication;
        int identifier;
        Uri normalizeScheme = gVar.f51378a.normalizeScheme();
        if (TextUtils.equals(com.mbridge.msdk.playercommon.exoplayer2.upstream.RawResourceDataSource.RAW_RESOURCE_SCHEME, normalizeScheme.getScheme())) {
            resourcesForApplication = context.getResources();
            List<String> pathSegments = normalizeScheme.getPathSegments();
            if (pathSegments.size() == 1) {
                identifier = i(pathSegments.get(0));
            } else {
                throw new RawResourceDataSourceException("rawresource:// URI must have exactly one path element, found " + pathSegments.size());
            }
        } else if (TextUtils.equals("android.resource", normalizeScheme.getScheme())) {
            String str = (String) cn.a.e(normalizeScheme.getPath());
            if (str.startsWith(DomExceptionUtils.SEPARATOR)) {
                str = str.substring(1);
            }
            if (TextUtils.isEmpty(normalizeScheme.getHost())) {
                host = context.getPackageName();
            } else {
                host = normalizeScheme.getHost();
            }
            if (host.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(host);
                } catch (PackageManager.NameNotFoundException e10) {
                    throw new RawResourceDataSourceException("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", e10, 2005);
                }
            }
            if (str.matches("\\d+")) {
                identifier = i(str);
            } else {
                identifier = resourcesForApplication.getIdentifier(host + ":" + str, "raw", null);
                if (identifier == 0) {
                    throw new RawResourceDataSourceException("Resource not found.", null, 2005);
                }
            }
        } else {
            throw new RawResourceDataSourceException("Unsupported URI scheme (" + normalizeScheme.getScheme() + "). Only android.resource is supported.", null, 1004);
        }
        try {
            AssetFileDescriptor openRawResourceFd = resourcesForApplication.openRawResourceFd(identifier);
            if (openRawResourceFd != null) {
                return openRawResourceFd;
            }
            throw new RawResourceDataSourceException("Resource is compressed: " + normalizeScheme, null, 2000);
        } catch (Resources.NotFoundException e11) {
            throw new RawResourceDataSourceException(null, e11, 2005);
        }
    }

    private static int i(String str) throws RawResourceDataSourceException {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            throw new RawResourceDataSourceException("Resource identifier must be an integer.", null, 1004);
        }
    }

    @Override // en.d
    public long b(g gVar) throws RawResourceDataSourceException {
        this.f55329f = gVar;
        f(gVar);
        AssetFileDescriptor h10 = h(this.f55328e, gVar);
        this.f55330g = h10;
        long length = h10.getLength();
        FileInputStream fileInputStream = new FileInputStream(this.f55330g.getFileDescriptor());
        this.f55331h = fileInputStream;
        int i10 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        if (i10 != 0) {
            try {
                if (gVar.f51384g > length) {
                    throw new RawResourceDataSourceException(null, null, 2008);
                }
            } catch (RawResourceDataSourceException e10) {
                throw e10;
            } catch (IOException e11) {
                throw new RawResourceDataSourceException(null, e11, 2000);
            }
        }
        long startOffset = this.f55330g.getStartOffset();
        long skip = fileInputStream.skip(gVar.f51384g + startOffset) - startOffset;
        if (skip == gVar.f51384g) {
            if (i10 == 0) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.f55332i = -1L;
                } else {
                    long size = channel.size() - channel.position();
                    this.f55332i = size;
                    if (size < 0) {
                        throw new RawResourceDataSourceException(null, null, 2008);
                    }
                }
            } else {
                long j10 = length - skip;
                this.f55332i = j10;
                if (j10 < 0) {
                    throw new DataSourceException(2008);
                }
            }
            long j11 = gVar.f51385h;
            if (j11 != -1) {
                long j12 = this.f55332i;
                if (j12 != -1) {
                    j11 = Math.min(j12, j11);
                }
                this.f55332i = j11;
            }
            this.f55333j = true;
            g(gVar);
            long j13 = gVar.f51385h;
            if (j13 == -1) {
                return this.f55332i;
            }
            return j13;
        }
        throw new RawResourceDataSourceException(null, null, 2008);
    }

    @Override // en.d
    public void close() throws RawResourceDataSourceException {
        this.f55329f = null;
        try {
            try {
                InputStream inputStream = this.f55331h;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f55331h = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptor = this.f55330g;
                        if (assetFileDescriptor != null) {
                            assetFileDescriptor.close();
                        }
                    } catch (IOException e10) {
                        throw new RawResourceDataSourceException(null, e10, 2000);
                    }
                } finally {
                    this.f55330g = null;
                    if (this.f55333j) {
                        this.f55333j = false;
                        e();
                    }
                }
            } catch (IOException e11) {
                throw new RawResourceDataSourceException(null, e11, 2000);
            }
        } catch (Throwable th2) {
            this.f55331h = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor2 = this.f55330g;
                    if (assetFileDescriptor2 != null) {
                        assetFileDescriptor2.close();
                    }
                    this.f55330g = null;
                    if (this.f55333j) {
                        this.f55333j = false;
                        e();
                    }
                    throw th2;
                } catch (IOException e12) {
                    throw new RawResourceDataSourceException(null, e12, 2000);
                }
            } finally {
                this.f55330g = null;
                if (this.f55333j) {
                    this.f55333j = false;
                    e();
                }
            }
        }
    }

    @Override // en.d
    @Nullable
    public Uri getUri() {
        g gVar = this.f55329f;
        if (gVar != null) {
            return gVar.f51378a;
        }
        return null;
    }

    @Override // zm.h
    public int read(byte[] bArr, int i10, int i11) throws RawResourceDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f55332i;
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
        int read = ((InputStream) m0.i(this.f55331h)).read(bArr, i10, i11);
        if (read == -1) {
            if (this.f55332i == -1) {
                return -1;
            }
            throw new RawResourceDataSourceException("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j11 = this.f55332i;
        if (j11 != -1) {
            this.f55332i = j11 - read;
        }
        d(read);
        return read;
    }
}
