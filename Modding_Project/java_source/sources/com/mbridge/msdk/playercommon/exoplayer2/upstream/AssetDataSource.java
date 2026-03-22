package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.collection.SieveCacheKt;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes6.dex */
public final class AssetDataSource implements DataSource {
    private final AssetManager assetManager;
    private long bytesRemaining;
    private InputStream inputStream;
    private final TransferListener<? super AssetDataSource> listener;
    private boolean opened;
    private Uri uri;

    /* loaded from: classes6.dex */
    public static final class AssetDataSourceException extends IOException {
        public AssetDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public AssetDataSource(Context context) {
        this(context, null);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public void close() throws AssetDataSourceException {
        this.uri = null;
        try {
            try {
                InputStream inputStream = this.inputStream;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e10) {
                throw new AssetDataSourceException(e10);
            }
        } finally {
            this.inputStream = null;
            if (this.opened) {
                this.opened = false;
                TransferListener<? super AssetDataSource> transferListener = this.listener;
                if (transferListener != null) {
                    transferListener.onTransferEnd(this);
                }
            }
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public long open(DataSpec dataSpec) throws AssetDataSourceException {
        try {
            Uri uri = dataSpec.uri;
            this.uri = uri;
            String path = uri.getPath();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith(DomExceptionUtils.SEPARATOR)) {
                path = path.substring(1);
            }
            InputStream open = this.assetManager.open(path, 1);
            this.inputStream = open;
            if (open.skip(dataSpec.position) >= dataSpec.position) {
                long j10 = dataSpec.length;
                if (j10 != -1) {
                    this.bytesRemaining = j10;
                } else {
                    long available = this.inputStream.available();
                    this.bytesRemaining = available;
                    if (available == SieveCacheKt.NodeLinkMask) {
                        this.bytesRemaining = -1L;
                    }
                }
                this.opened = true;
                TransferListener<? super AssetDataSource> transferListener = this.listener;
                if (transferListener != null) {
                    transferListener.onTransferStart(this, dataSpec);
                }
                return this.bytesRemaining;
            }
            throw new EOFException();
        } catch (IOException e10) {
            throw new AssetDataSourceException(e10);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.upstream.DataSource
    public int read(byte[] bArr, int i10, int i11) throws AssetDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.bytesRemaining;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new AssetDataSourceException(e10);
            }
        }
        int read = this.inputStream.read(bArr, i10, i11);
        if (read == -1) {
            if (this.bytesRemaining == -1) {
                return -1;
            }
            throw new AssetDataSourceException(new EOFException());
        }
        long j11 = this.bytesRemaining;
        if (j11 != -1) {
            this.bytesRemaining = j11 - read;
        }
        TransferListener<? super AssetDataSource> transferListener = this.listener;
        if (transferListener != null) {
            transferListener.onBytesTransferred(this, read);
        }
        return read;
    }

    public AssetDataSource(Context context, TransferListener<? super AssetDataSource> transferListener) {
        this.assetManager = context.getAssets();
        this.listener = transferListener;
    }
}
