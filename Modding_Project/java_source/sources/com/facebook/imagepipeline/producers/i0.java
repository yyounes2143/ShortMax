package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore;
import com.facebook.imagepipeline.request.ImageRequest;
import com.ss.ttm.player.MediaPlayer;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.Executor;
/* compiled from: LocalContentUriThumbnailFetchProducer.java */
/* loaded from: classes3.dex */
public class i0 extends k0 implements s1<y3.k> {

    /* renamed from: d  reason: collision with root package name */
    private static final Class<?> f15793d = i0.class;

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f15794e = {"_id", "_data"};

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f15795f = {"_data"};

    /* renamed from: g  reason: collision with root package name */
    private static final Rect f15796g = new Rect(0, 0, 512, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500);

    /* renamed from: h  reason: collision with root package name */
    private static final Rect f15797h = new Rect(0, 0, 96, 96);

    /* renamed from: c  reason: collision with root package name */
    private final ContentResolver f15798c;

    public i0(Executor executor, n2.g gVar, ContentResolver contentResolver) {
        super(executor, gVar);
        this.f15798c = contentResolver;
    }

    private y3.k g(Uri uri, s3.f fVar) throws IOException {
        Cursor query;
        y3.k j10;
        if (fVar == null || (query = this.f15798c.query(uri, f15794e, null, null, null)) == null) {
            return null;
        }
        try {
            if (!query.moveToFirst() || (j10 = j(fVar, query.getLong(query.getColumnIndex("_id")))) == null) {
                return null;
            }
            int columnIndex = query.getColumnIndex("_data");
            if (columnIndex >= 0) {
                j10.f0(i(query.getString(columnIndex)));
            }
            return j10;
        } finally {
            query.close();
        }
    }

    private static int h(String str) {
        if (str == null) {
            return -1;
        }
        return (int) new File(str).length();
    }

    private static int i(String str) {
        if (str != null) {
            try {
                return com.facebook.imageutils.g.a(new ExifInterface(str).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1));
            } catch (IOException e10) {
                l2.a.h(f15793d, e10, "Unable to retrieve thumbnail rotation for %s", str);
                return 0;
            }
        }
        return 0;
    }

    private y3.k j(s3.f fVar, long j10) throws IOException {
        Cursor queryMiniThumbnail;
        int columnIndex;
        int k10 = k(fVar);
        if (k10 == 0 || (queryMiniThumbnail = MediaStore.Images.Thumbnails.queryMiniThumbnail(this.f15798c, j10, k10, f15795f)) == null) {
            return null;
        }
        try {
            if (queryMiniThumbnail.moveToFirst() && (columnIndex = queryMiniThumbnail.getColumnIndex("_data")) >= 0) {
                String str = (String) k2.h.g(queryMiniThumbnail.getString(columnIndex));
                if (new File(str).exists()) {
                    return e(new FileInputStream(str), h(str));
                }
            }
            return null;
        } finally {
            queryMiniThumbnail.close();
        }
    }

    private static int k(s3.f fVar) {
        Rect rect = f15797h;
        if (t1.b(rect.width(), rect.height(), fVar)) {
            return 3;
        }
        Rect rect2 = f15796g;
        if (t1.b(rect2.width(), rect2.height(), fVar)) {
            return 1;
        }
        return 0;
    }

    @Override // com.facebook.imagepipeline.producers.s1
    public boolean a(s3.f fVar) {
        Rect rect = f15796g;
        return t1.b(rect.width(), rect.height(), fVar);
    }

    @Override // com.facebook.imagepipeline.producers.k0
    protected y3.k d(ImageRequest imageRequest) throws IOException {
        Uri w10 = imageRequest.w();
        if (r2.d.j(w10)) {
            return g(w10, imageRequest.s());
        }
        return null;
    }

    @Override // com.facebook.imagepipeline.producers.k0
    protected String f() {
        return "LocalContentUriThumbnailFetchProducer";
    }
}
