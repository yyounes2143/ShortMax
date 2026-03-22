package android.support.v4.media.session;

import android.annotation.SuppressLint;
import android.media.MediaDescription;
import android.media.session.MediaSession;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class MediaSessionCompat {

    /* renamed from: a  reason: collision with root package name */
    private final MediaControllerCompat f798a;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        ResultReceiver f802a;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<ResultReceiverWrapper> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public ResultReceiverWrapper[] newArray(int i10) {
                return new ResultReceiverWrapper[i10];
            }
        }

        ResultReceiverWrapper(Parcel parcel) {
            this.f802a = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            this.f802a.writeToParcel(parcel, i10);
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private final Object f803a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f804b;
        @GuardedBy("mLock")

        /* renamed from: c  reason: collision with root package name */
        private IMediaSession f805c;
        @GuardedBy("mLock")

        /* renamed from: d  reason: collision with root package name */
        private VersionedParcelable f806d;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<Token> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public Token createFromParcel(Parcel parcel) {
                return new Token(parcel.readParcelable(null));
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public Token[] newArray(int i10) {
                return new Token[i10];
            }
        }

        Token(Object obj) {
            this(obj, null, null);
        }

        public static Token a(Object obj) {
            return b(obj, null);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public static Token b(Object obj, IMediaSession iMediaSession) {
            if (obj != null) {
                if (obj instanceof MediaSession.Token) {
                    return new Token(obj, iMediaSession);
                }
                throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
            }
            return null;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public IMediaSession c() {
            IMediaSession iMediaSession;
            synchronized (this.f803a) {
                iMediaSession = this.f805c;
            }
            return iMediaSession;
        }

        public Object d() {
            return this.f804b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public void e(IMediaSession iMediaSession) {
            synchronized (this.f803a) {
                this.f805c = iMediaSession;
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.f804b;
            if (obj2 == null) {
                if (token.f804b == null) {
                    return true;
                }
                return false;
            }
            Object obj3 = token.f804b;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public void f(VersionedParcelable versionedParcelable) {
            synchronized (this.f803a) {
                this.f806d = versionedParcelable;
            }
        }

        public int hashCode() {
            Object obj = this.f804b;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable((Parcelable) this.f804b, i10);
        }

        Token(Object obj, IMediaSession iMediaSession) {
            this(obj, iMediaSession, null);
        }

        Token(Object obj, IMediaSession iMediaSession, VersionedParcelable versionedParcelable) {
            this.f803a = new Object();
            this.f804b = obj;
            this.f805c = iMediaSession;
            this.f806d = versionedParcelable;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static void a(@Nullable Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static Bundle c(@Nullable Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        a(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException unused) {
            Log.e("MediaSessionCompat", "Could not unparcel the data.");
            return null;
        }
    }

    public MediaControllerCompat b() {
        return this.f798a;
    }

    @SuppressLint({"BanParcelableUsage"})
    /* loaded from: classes.dex */
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private final MediaDescriptionCompat f799a;

        /* renamed from: b  reason: collision with root package name */
        private final long f800b;

        /* renamed from: c  reason: collision with root package name */
        private MediaSession.QueueItem f801c;

        /* loaded from: classes.dex */
        class a implements Parcelable.Creator<QueueItem> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public QueueItem[] newArray(int i10) {
                return new QueueItem[i10];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @RequiresApi(21)
        /* loaded from: classes.dex */
        public static class b {
            @DoNotInline
            static MediaSession.QueueItem a(MediaDescription mediaDescription, long j10) {
                return new MediaSession.QueueItem(mediaDescription, j10);
            }

            @DoNotInline
            static MediaDescription b(MediaSession.QueueItem queueItem) {
                return queueItem.getDescription();
            }

            @DoNotInline
            static long c(MediaSession.QueueItem queueItem) {
                return queueItem.getQueueId();
            }
        }

        private QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat mediaDescriptionCompat, long j10) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null");
            }
            if (j10 != -1) {
                this.f799a = mediaDescriptionCompat;
                this.f800b = j10;
                this.f801c = queueItem;
                return;
            }
            throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
        }

        public static QueueItem a(Object obj) {
            if (obj != null) {
                MediaSession.QueueItem queueItem = (MediaSession.QueueItem) obj;
                return new QueueItem(queueItem, MediaDescriptionCompat.a(b.b(queueItem)), b.c(queueItem));
            }
            return null;
        }

        public static List<QueueItem> b(List<?> list) {
            if (list != null) {
                ArrayList arrayList = new ArrayList(list.size());
                Iterator<?> it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(a(it.next()));
                }
                return arrayList;
            }
            return null;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.f799a + ", Id=" + this.f800b + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            this.f799a.writeToParcel(parcel, i10);
            parcel.writeLong(this.f800b);
        }

        QueueItem(Parcel parcel) {
            this.f799a = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f800b = parcel.readLong();
        }
    }
}
