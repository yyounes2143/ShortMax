package org.chromium.net;

import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
/* loaded from: classes8.dex */
public final class UploadDataProviders {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public static class a implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f64362a;

        a(File file) {
            this.f64362a = file;
        }

        @Override // org.chromium.net.UploadDataProviders.d
        public FileChannel getChannel() throws IOException {
            return new FileInputStream(this.f64362a).getChannel();
        }
    }

    /* loaded from: classes8.dex */
    static class b implements d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ParcelFileDescriptor f64363a;

        b(ParcelFileDescriptor parcelFileDescriptor) {
            this.f64363a = parcelFileDescriptor;
        }

        @Override // org.chromium.net.UploadDataProviders.d
        public FileChannel getChannel() throws IOException {
            if (this.f64363a.getStatSize() != -1) {
                return new ParcelFileDescriptor.AutoCloseInputStream(this.f64363a).getChannel();
            }
            this.f64363a.close();
            throw new IllegalArgumentException("Not a file: " + this.f64363a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public static final class c extends UploadDataProvider {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f64364a;

        /* synthetic */ c(ByteBuffer byteBuffer, a aVar) {
            this(byteBuffer);
        }

        @Override // org.chromium.net.UploadDataProvider
        public long getLength() {
            return this.f64364a.limit();
        }

        @Override // org.chromium.net.UploadDataProvider
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) {
            if (byteBuffer.hasRemaining()) {
                if (byteBuffer.remaining() >= this.f64364a.remaining()) {
                    byteBuffer.put(this.f64364a);
                } else {
                    int limit = this.f64364a.limit();
                    ByteBuffer byteBuffer2 = this.f64364a;
                    byteBuffer2.limit(byteBuffer2.position() + byteBuffer.remaining());
                    byteBuffer.put(this.f64364a);
                    this.f64364a.limit(limit);
                }
                uploadDataSink.onReadSucceeded(false);
                return;
            }
            throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
        }

        @Override // org.chromium.net.UploadDataProvider
        public void rewind(UploadDataSink uploadDataSink) {
            this.f64364a.position(0);
            uploadDataSink.onRewindSucceeded();
        }

        private c(ByteBuffer byteBuffer) {
            this.f64364a = byteBuffer;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes8.dex */
    public interface d {
        FileChannel getChannel() throws IOException;
    }

    /* loaded from: classes8.dex */
    private static final class e extends UploadDataProvider {

        /* renamed from: a  reason: collision with root package name */
        private volatile FileChannel f64365a;

        /* renamed from: b  reason: collision with root package name */
        private final d f64366b;

        /* renamed from: c  reason: collision with root package name */
        private final Object f64367c;

        /* synthetic */ e(d dVar, a aVar) {
            this(dVar);
        }

        private FileChannel d() throws IOException {
            if (this.f64365a == null) {
                synchronized (this.f64367c) {
                    try {
                        if (this.f64365a == null) {
                            this.f64365a = this.f64366b.getChannel();
                        }
                    } finally {
                    }
                }
            }
            return this.f64365a;
        }

        @Override // org.chromium.net.UploadDataProvider, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            FileChannel fileChannel = this.f64365a;
            if (fileChannel != null) {
                fileChannel.close();
            }
        }

        @Override // org.chromium.net.UploadDataProvider
        public long getLength() throws IOException {
            return d().size();
        }

        @Override // org.chromium.net.UploadDataProvider
        public void read(UploadDataSink uploadDataSink, ByteBuffer byteBuffer) throws IOException {
            if (byteBuffer.hasRemaining()) {
                FileChannel d10 = d();
                int i10 = 0;
                while (i10 == 0) {
                    int read = d10.read(byteBuffer);
                    if (read == -1) {
                        break;
                    }
                    i10 += read;
                }
                uploadDataSink.onReadSucceeded(false);
                return;
            }
            throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
        }

        @Override // org.chromium.net.UploadDataProvider
        public void rewind(UploadDataSink uploadDataSink) throws IOException {
            d().position(0L);
            uploadDataSink.onRewindSucceeded();
        }

        private e(d dVar) {
            this.f64367c = new Object();
            this.f64366b = dVar;
        }
    }

    private UploadDataProviders() {
    }

    public static UploadDataProvider create(File file) {
        return new e(new a(file), null);
    }

    public static UploadDataProvider create(ParcelFileDescriptor parcelFileDescriptor) {
        return new e(new b(parcelFileDescriptor), null);
    }

    public static UploadDataProvider create(ByteBuffer byteBuffer) {
        return new c(byteBuffer.slice(), null);
    }

    public static UploadDataProvider create(byte[] bArr, int i10, int i11) {
        return new c(ByteBuffer.wrap(bArr, i10, i11).slice(), null);
    }

    public static UploadDataProvider create(byte[] bArr) {
        return create(bArr, 0, bArr.length);
    }
}
