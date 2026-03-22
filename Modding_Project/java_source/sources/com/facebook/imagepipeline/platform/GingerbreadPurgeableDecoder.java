package com.facebook.imagepipeline.platform;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.MemoryFile;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import k2.d;
import k2.m;
import n2.h;
import o2.a;
import s2.b;
import s2.c;
@d
/* loaded from: classes3.dex */
public class GingerbreadPurgeableDecoder extends DalvikPurgeableDecoder {

    /* renamed from: d  reason: collision with root package name */
    private static Method f15699d;

    /* renamed from: c  reason: collision with root package name */
    private final b f15700c = c.i();

    private static MemoryFile h(a<PooledByteBuffer> aVar, int i10, byte[] bArr) throws IOException {
        int length;
        OutputStream outputStream;
        p2.a aVar2;
        h hVar;
        if (bArr == null) {
            length = 0;
        } else {
            length = bArr.length;
        }
        h hVar2 = null;
        OutputStream outputStream2 = null;
        MemoryFile memoryFile = new MemoryFile(null, length + i10);
        memoryFile.allowPurging(false);
        try {
            hVar = new h(aVar.s());
            try {
                aVar2 = new p2.a(hVar, i10);
            } catch (Throwable th2) {
                th = th2;
                outputStream = null;
                aVar2 = null;
            }
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
            aVar2 = null;
        }
        try {
            outputStream2 = memoryFile.getOutputStream();
            k2.a.a(aVar2, outputStream2);
            if (bArr != null) {
                memoryFile.writeBytes(bArr, 0, i10, bArr.length);
            }
            a.r(aVar);
            k2.b.b(hVar);
            k2.b.b(aVar2);
            k2.b.a(outputStream2, true);
            return memoryFile;
        } catch (Throwable th4) {
            th = th4;
            outputStream = outputStream2;
            hVar2 = hVar;
            a.r(aVar);
            k2.b.b(hVar2);
            k2.b.b(aVar2);
            k2.b.a(outputStream, true);
            throw th;
        }
    }

    private Bitmap i(a<PooledByteBuffer> aVar, int i10, byte[] bArr, BitmapFactory.Options options) {
        MemoryFile h10;
        MemoryFile memoryFile = null;
        try {
            try {
                h10 = h(aVar, i10, bArr);
            } catch (IOException e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            FileDescriptor k10 = k(h10);
            b bVar = this.f15700c;
            if (bVar != null) {
                Bitmap bitmap = (Bitmap) k2.h.h(bVar.b(k10, null, options), "BitmapFactory returned null");
                if (h10 != null) {
                    h10.close();
                }
                return bitmap;
            }
            throw new IllegalStateException("WebpBitmapFactory is null");
        } catch (IOException e11) {
            e = e11;
            memoryFile = h10;
            throw m.a(e);
        } catch (Throwable th3) {
            th = th3;
            memoryFile = h10;
            if (memoryFile != null) {
                memoryFile.close();
            }
            throw th;
        }
    }

    private synchronized Method j() {
        if (f15699d == null) {
            try {
                f15699d = MemoryFile.class.getDeclaredMethod("getFileDescriptor", new Class[0]);
            } catch (Exception e10) {
                throw m.a(e10);
            }
        }
        return f15699d;
    }

    private FileDescriptor k(MemoryFile memoryFile) {
        try {
            return (FileDescriptor) k2.h.g(j().invoke(memoryFile, new Object[0]));
        } catch (Exception e10) {
            throw m.a(e10);
        }
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap c(a<PooledByteBuffer> aVar, BitmapFactory.Options options) {
        return i(aVar, aVar.s().size(), null, options);
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap d(a<PooledByteBuffer> aVar, int i10, BitmapFactory.Options options) {
        byte[] bArr;
        if (DalvikPurgeableDecoder.e(aVar, i10)) {
            bArr = null;
        } else {
            bArr = DalvikPurgeableDecoder.f15688b;
        }
        return i(aVar, i10, bArr, options);
    }
}
