package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    final int f812a;

    /* renamed from: b  reason: collision with root package name */
    final long f813b;

    /* renamed from: c  reason: collision with root package name */
    final long f814c;

    /* renamed from: d  reason: collision with root package name */
    final float f815d;

    /* renamed from: e  reason: collision with root package name */
    final long f816e;

    /* renamed from: f  reason: collision with root package name */
    final int f817f;

    /* renamed from: g  reason: collision with root package name */
    final CharSequence f818g;

    /* renamed from: h  reason: collision with root package name */
    final long f819h;

    /* renamed from: i  reason: collision with root package name */
    List<CustomAction> f820i;

    /* renamed from: j  reason: collision with root package name */
    final long f821j;

    /* renamed from: k  reason: collision with root package name */
    final Bundle f822k;

    /* renamed from: l  reason: collision with root package name */
    private PlaybackState f823l;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<PlaybackStateCompat> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public PlaybackStateCompat[] newArray(int i10) {
            return new PlaybackStateCompat[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class b {
        @DoNotInline
        static void a(PlaybackState.Builder builder, PlaybackState.CustomAction customAction) {
            builder.addCustomAction(customAction);
        }

        @DoNotInline
        static PlaybackState.CustomAction b(PlaybackState.CustomAction.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        static PlaybackState c(PlaybackState.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        static PlaybackState.Builder d() {
            return new PlaybackState.Builder();
        }

        @DoNotInline
        static PlaybackState.CustomAction.Builder e(String str, CharSequence charSequence, int i10) {
            return new PlaybackState.CustomAction.Builder(str, charSequence, i10);
        }

        @DoNotInline
        static String f(PlaybackState.CustomAction customAction) {
            return customAction.getAction();
        }

        @DoNotInline
        static long g(PlaybackState playbackState) {
            return playbackState.getActions();
        }

        @DoNotInline
        static long h(PlaybackState playbackState) {
            return playbackState.getActiveQueueItemId();
        }

        @DoNotInline
        static long i(PlaybackState playbackState) {
            return playbackState.getBufferedPosition();
        }

        @DoNotInline
        static List<PlaybackState.CustomAction> j(PlaybackState playbackState) {
            return playbackState.getCustomActions();
        }

        @DoNotInline
        static CharSequence k(PlaybackState playbackState) {
            return playbackState.getErrorMessage();
        }

        @DoNotInline
        static Bundle l(PlaybackState.CustomAction customAction) {
            return customAction.getExtras();
        }

        @DoNotInline
        static int m(PlaybackState.CustomAction customAction) {
            return customAction.getIcon();
        }

        @DoNotInline
        static long n(PlaybackState playbackState) {
            return playbackState.getLastPositionUpdateTime();
        }

        @DoNotInline
        static CharSequence o(PlaybackState.CustomAction customAction) {
            return customAction.getName();
        }

        @DoNotInline
        static float p(PlaybackState playbackState) {
            return playbackState.getPlaybackSpeed();
        }

        @DoNotInline
        static long q(PlaybackState playbackState) {
            return playbackState.getPosition();
        }

        @DoNotInline
        static int r(PlaybackState playbackState) {
            return playbackState.getState();
        }

        @DoNotInline
        static void s(PlaybackState.Builder builder, long j10) {
            builder.setActions(j10);
        }

        @DoNotInline
        static void t(PlaybackState.Builder builder, long j10) {
            builder.setActiveQueueItemId(j10);
        }

        @DoNotInline
        static void u(PlaybackState.Builder builder, long j10) {
            builder.setBufferedPosition(j10);
        }

        @DoNotInline
        static void v(PlaybackState.Builder builder, CharSequence charSequence) {
            builder.setErrorMessage(charSequence);
        }

        @DoNotInline
        static void w(PlaybackState.CustomAction.Builder builder, Bundle bundle) {
            builder.setExtras(bundle);
        }

        @DoNotInline
        static void x(PlaybackState.Builder builder, int i10, long j10, float f10, long j11) {
            builder.setState(i10, j10, f10, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(22)
    /* loaded from: classes.dex */
    public static class c {
        @DoNotInline
        static Bundle a(PlaybackState playbackState) {
            return playbackState.getExtras();
        }

        @DoNotInline
        static void b(PlaybackState.Builder builder, Bundle bundle) {
            builder.setExtras(bundle);
        }
    }

    PlaybackStateCompat(int i10, long j10, long j11, float f10, long j12, int i11, CharSequence charSequence, long j13, List<CustomAction> list, long j14, Bundle bundle) {
        this.f812a = i10;
        this.f813b = j10;
        this.f814c = j11;
        this.f815d = f10;
        this.f816e = j12;
        this.f817f = i11;
        this.f818g = charSequence;
        this.f819h = j13;
        this.f820i = new ArrayList(list);
        this.f821j = j14;
        this.f822k = bundle;
    }

    public static PlaybackStateCompat a(Object obj) {
        ArrayList arrayList = null;
        if (obj == null) {
            return null;
        }
        PlaybackState playbackState = (PlaybackState) obj;
        List<PlaybackState.CustomAction> j10 = b.j(playbackState);
        if (j10 != null) {
            arrayList = new ArrayList(j10.size());
            for (PlaybackState.CustomAction customAction : j10) {
                arrayList.add(CustomAction.a(customAction));
            }
        }
        Bundle a10 = c.a(playbackState);
        MediaSessionCompat.a(a10);
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(b.r(playbackState), b.q(playbackState), b.i(playbackState), b.p(playbackState), b.g(playbackState), 0, b.k(playbackState), b.n(playbackState), arrayList, b.h(playbackState), a10);
        playbackStateCompat.f823l = playbackState;
        return playbackStateCompat;
    }

    public static int b(long j10) {
        if (j10 == 4) {
            return 126;
        }
        if (j10 == 2) {
            return 127;
        }
        if (j10 == 32) {
            return 87;
        }
        if (j10 == 16) {
            return 88;
        }
        if (j10 == 1) {
            return 86;
        }
        if (j10 == 64) {
            return 90;
        }
        if (j10 == 8) {
            return 89;
        }
        if (j10 == 512) {
            return 85;
        }
        return 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f812a + ", position=" + this.f813b + ", buffered position=" + this.f814c + ", speed=" + this.f815d + ", updated=" + this.f819h + ", actions=" + this.f816e + ", error code=" + this.f817f + ", error message=" + this.f818g + ", custom actions=" + this.f820i + ", active item id=" + this.f821j + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f812a);
        parcel.writeLong(this.f813b);
        parcel.writeFloat(this.f815d);
        parcel.writeLong(this.f819h);
        parcel.writeLong(this.f814c);
        parcel.writeLong(this.f816e);
        TextUtils.writeToParcel(this.f818g, parcel, i10);
        parcel.writeTypedList(this.f820i);
        parcel.writeLong(this.f821j);
        parcel.writeBundle(this.f822k);
        parcel.writeInt(this.f817f);
    }

    /* loaded from: classes.dex */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private final String f824a;

        /* renamed from: b  reason: collision with root package name */
        private final CharSequence f825b;

        /* renamed from: c  reason: collision with root package name */
        private final int f826c;

        /* renamed from: d  reason: collision with root package name */
        private final Bundle f827d;

        /* renamed from: e  reason: collision with root package name */
        private PlaybackState.CustomAction f828e;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<CustomAction> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public CustomAction[] newArray(int i10) {
                return new CustomAction[i10];
            }
        }

        CustomAction(String str, CharSequence charSequence, int i10, Bundle bundle) {
            this.f824a = str;
            this.f825b = charSequence;
            this.f826c = i10;
            this.f827d = bundle;
        }

        public static CustomAction a(Object obj) {
            if (obj != null) {
                PlaybackState.CustomAction customAction = (PlaybackState.CustomAction) obj;
                Bundle l10 = b.l(customAction);
                MediaSessionCompat.a(l10);
                CustomAction customAction2 = new CustomAction(b.f(customAction), b.o(customAction), b.m(customAction), l10);
                customAction2.f828e = customAction;
                return customAction2;
            }
            return null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f825b) + ", mIcon=" + this.f826c + ", mExtras=" + this.f827d;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f824a);
            TextUtils.writeToParcel(this.f825b, parcel, i10);
            parcel.writeInt(this.f826c);
            parcel.writeBundle(this.f827d);
        }

        CustomAction(Parcel parcel) {
            this.f824a = parcel.readString();
            this.f825b = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f826c = parcel.readInt();
            this.f827d = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f812a = parcel.readInt();
        this.f813b = parcel.readLong();
        this.f815d = parcel.readFloat();
        this.f819h = parcel.readLong();
        this.f814c = parcel.readLong();
        this.f816e = parcel.readLong();
        this.f818g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f820i = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f821j = parcel.readLong();
        this.f822k = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f817f = parcel.readInt();
    }
}
