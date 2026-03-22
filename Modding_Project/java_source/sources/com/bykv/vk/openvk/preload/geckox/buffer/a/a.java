package com.bykv.vk.openvk.preload.geckox.buffer.a;

import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import java.io.File;
import java.io.IOException;
/* compiled from: BufferPolicy.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public String f11348a;

    /* renamed from: b  reason: collision with root package name */
    public String f11349b;

    /* renamed from: c  reason: collision with root package name */
    public String f11350c;

    /* renamed from: d  reason: collision with root package name */
    public String f11351d;

    /* renamed from: e  reason: collision with root package name */
    public String f11352e;

    /* renamed from: f  reason: collision with root package name */
    public String f11353f;

    /* renamed from: g  reason: collision with root package name */
    public int f11354g;

    public static com.bykv.vk.openvk.preload.geckox.buffer.a a(File file, long j10) throws IOException {
        com.bykv.vk.openvk.preload.geckox.buffer.a b10 = b(file, j10);
        GeckoLogger.d("gecko-debug-tag", "buffer type:" + b10.getClass());
        return b10;
    }

    private static com.bykv.vk.openvk.preload.geckox.buffer.a b(File file, long j10) throws IOException {
        if (j10 <= 0) {
            try {
                return new b(file);
            } catch (Exception e10) {
                throw new IOException("create FileBuffer failed! file:" + file.getAbsolutePath() + " caused by:" + e10.getMessage(), e10);
            }
        }
        try {
            return new c(j10, file);
        } catch (Exception e11) {
            throw new RuntimeException("create random access file failed! file:" + file.getAbsolutePath() + " caused by:" + e11.getMessage(), e11);
        }
    }
}
