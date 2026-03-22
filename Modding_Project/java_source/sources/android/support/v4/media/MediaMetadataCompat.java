package android.support.v4.media;

import android.annotation.SuppressLint;
import android.media.MediaMetadata;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.collection.ArrayMap;
import androidx.media.utils.MediaConstants;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class MediaMetadataCompat implements Parcelable {
    public static final Parcelable.Creator<MediaMetadataCompat> CREATOR;

    /* renamed from: c  reason: collision with root package name */
    static final ArrayMap<String, Integer> f770c;

    /* renamed from: d  reason: collision with root package name */
    private static final String[] f771d;

    /* renamed from: e  reason: collision with root package name */
    private static final String[] f772e;

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f773f;

    /* renamed from: a  reason: collision with root package name */
    final Bundle f774a;

    /* renamed from: b  reason: collision with root package name */
    private MediaMetadata f775b;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<MediaMetadataCompat> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MediaMetadataCompat createFromParcel(Parcel parcel) {
            return new MediaMetadataCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MediaMetadataCompat[] newArray(int i10) {
            return new MediaMetadataCompat[i10];
        }
    }

    static {
        ArrayMap<String, Integer> arrayMap = new ArrayMap<>();
        f770c = arrayMap;
        arrayMap.put("android.media.metadata.TITLE", 1);
        arrayMap.put("android.media.metadata.ARTIST", 1);
        arrayMap.put("android.media.metadata.DURATION", 0);
        arrayMap.put("android.media.metadata.ALBUM", 1);
        arrayMap.put("android.media.metadata.AUTHOR", 1);
        arrayMap.put("android.media.metadata.WRITER", 1);
        arrayMap.put("android.media.metadata.COMPOSER", 1);
        arrayMap.put("android.media.metadata.COMPILATION", 1);
        arrayMap.put("android.media.metadata.DATE", 1);
        arrayMap.put("android.media.metadata.YEAR", 0);
        arrayMap.put("android.media.metadata.GENRE", 1);
        arrayMap.put("android.media.metadata.TRACK_NUMBER", 0);
        arrayMap.put("android.media.metadata.NUM_TRACKS", 0);
        arrayMap.put("android.media.metadata.DISC_NUMBER", 0);
        arrayMap.put("android.media.metadata.ALBUM_ARTIST", 1);
        arrayMap.put("android.media.metadata.ART", 2);
        arrayMap.put("android.media.metadata.ART_URI", 1);
        arrayMap.put("android.media.metadata.ALBUM_ART", 2);
        arrayMap.put("android.media.metadata.ALBUM_ART_URI", 1);
        arrayMap.put("android.media.metadata.USER_RATING", 3);
        arrayMap.put("android.media.metadata.RATING", 3);
        arrayMap.put("android.media.metadata.DISPLAY_TITLE", 1);
        arrayMap.put("android.media.metadata.DISPLAY_SUBTITLE", 1);
        arrayMap.put("android.media.metadata.DISPLAY_DESCRIPTION", 1);
        arrayMap.put("android.media.metadata.DISPLAY_ICON", 2);
        arrayMap.put("android.media.metadata.DISPLAY_ICON_URI", 1);
        arrayMap.put("android.media.metadata.MEDIA_ID", 1);
        arrayMap.put("android.media.metadata.BT_FOLDER_TYPE", 0);
        arrayMap.put("android.media.metadata.MEDIA_URI", 1);
        arrayMap.put(MediaConstants.METADATA_KEY_IS_ADVERTISEMENT, 0);
        arrayMap.put("android.media.metadata.DOWNLOAD_STATUS", 0);
        f771d = new String[]{"android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER"};
        f772e = new String[]{"android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART"};
        f773f = new String[]{"android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI"};
        CREATOR = new a();
    }

    MediaMetadataCompat(Parcel parcel) {
        this.f774a = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }

    public static MediaMetadataCompat a(Object obj) {
        if (obj != null) {
            Parcel obtain = Parcel.obtain();
            MediaMetadata mediaMetadata = (MediaMetadata) obj;
            mediaMetadata.writeToParcel(obtain, 0);
            obtain.setDataPosition(0);
            MediaMetadataCompat createFromParcel = CREATOR.createFromParcel(obtain);
            obtain.recycle();
            createFromParcel.f775b = mediaMetadata;
            return createFromParcel;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeBundle(this.f774a);
    }
}
