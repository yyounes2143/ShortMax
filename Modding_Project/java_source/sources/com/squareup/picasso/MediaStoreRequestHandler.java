package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.RequestHandler;
import com.ss.ttm.player.MediaPlayer;
import com.unity3d.services.ads.adunit.AdUnitActivity;
import java.io.IOException;
import okio.Okio;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class MediaStoreRequestHandler extends ContentStreamRequestHandler {
    private static final String[] CONTENT_ORIENTATION = {AdUnitActivity.EXTRA_ORIENTATION};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public enum PicassoKind {
        MICRO(3, 96, 96),
        MINI(1, 512, MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500),
        FULL(2, -1, -1);
        
        final int androidKind;
        final int height;
        final int width;

        PicassoKind(int i10, int i11, int i12) {
            this.androidKind = i10;
            this.width = i11;
            this.height = i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaStoreRequestHandler(Context context) {
        super(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0022, code lost:
        r1.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static int getExifOrientation(android.content.ContentResolver r8, android.net.Uri r9) {
        /*
            r0 = 0
            r1 = 0
            java.lang.String[] r4 = com.squareup.picasso.MediaStoreRequestHandler.CONTENT_ORIENTATION     // Catch: java.lang.Throwable -> L1e java.lang.RuntimeException -> L2c
            r6 = 0
            r7 = 0
            r5 = 0
            r2 = r8
            r3 = r9
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L1e java.lang.RuntimeException -> L2c
            if (r1 == 0) goto L20
            boolean r8 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L1e java.lang.RuntimeException -> L2c
            if (r8 != 0) goto L16
            goto L20
        L16:
            int r8 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L1e java.lang.RuntimeException -> L2c
            r1.close()
            return r8
        L1e:
            r8 = move-exception
            goto L26
        L20:
            if (r1 == 0) goto L25
            r1.close()
        L25:
            return r0
        L26:
            if (r1 == 0) goto L2b
            r1.close()
        L2b:
            throw r8
        L2c:
            if (r1 == 0) goto L31
            r1.close()
        L31:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.MediaStoreRequestHandler.getExifOrientation(android.content.ContentResolver, android.net.Uri):int");
    }

    static PicassoKind getPicassoKind(int i10, int i11) {
        PicassoKind picassoKind = PicassoKind.MICRO;
        if (i10 <= picassoKind.width && i11 <= picassoKind.height) {
            return picassoKind;
        }
        PicassoKind picassoKind2 = PicassoKind.MINI;
        if (i10 <= picassoKind2.width && i11 <= picassoKind2.height) {
            return picassoKind2;
        }
        return PicassoKind.FULL;
    }

    @Override // com.squareup.picasso.ContentStreamRequestHandler, com.squareup.picasso.RequestHandler
    public boolean canHandleRequest(Request request) {
        Uri uri = request.uri;
        if ("content".equals(uri.getScheme()) && "media".equals(uri.getAuthority())) {
            return true;
        }
        return false;
    }

    @Override // com.squareup.picasso.ContentStreamRequestHandler, com.squareup.picasso.RequestHandler
    public RequestHandler.Result load(Request request, int i10) throws IOException {
        boolean z10;
        Bitmap thumbnail;
        int i11;
        ContentResolver contentResolver = this.context.getContentResolver();
        int exifOrientation = getExifOrientation(contentResolver, request.uri);
        String type = contentResolver.getType(request.uri);
        if (type != null && type.startsWith("video/")) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (request.hasSize()) {
            PicassoKind picassoKind = getPicassoKind(request.targetWidth, request.targetHeight);
            if (!z10 && picassoKind == PicassoKind.FULL) {
                return new RequestHandler.Result(null, Okio.source(getInputStream(request)), Picasso.LoadedFrom.DISK, exifOrientation);
            }
            long parseId = ContentUris.parseId(request.uri);
            BitmapFactory.Options createBitmapOptions = RequestHandler.createBitmapOptions(request);
            createBitmapOptions.inJustDecodeBounds = true;
            RequestHandler.calculateInSampleSize(request.targetWidth, request.targetHeight, picassoKind.width, picassoKind.height, createBitmapOptions, request);
            if (z10) {
                if (picassoKind == PicassoKind.FULL) {
                    i11 = 1;
                } else {
                    i11 = picassoKind.androidKind;
                }
                thumbnail = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, parseId, i11, createBitmapOptions);
            } else {
                thumbnail = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, parseId, picassoKind.androidKind, createBitmapOptions);
            }
            if (thumbnail != null) {
                return new RequestHandler.Result(thumbnail, null, Picasso.LoadedFrom.DISK, exifOrientation);
            }
        }
        return new RequestHandler.Result(null, Okio.source(getInputStream(request)), Picasso.LoadedFrom.DISK, exifOrientation);
    }
}
