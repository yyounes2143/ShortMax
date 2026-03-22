package xh;

import android.text.TextUtils;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.startshorts.androidplayer.bean.shorts.QueryDownloadEpisodesResult;
import jk.l;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadEpisodesInfo.kt */
@Entity(tableName = "download_episodes")
@Metadata
/* loaded from: classes7.dex */
public final class f {
    @PrimaryKey

    /* renamed from: a  reason: collision with root package name */
    private int f70471a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f70472b;

    public f(int i10, @Nullable String str) {
        this.f70471a = i10;
        this.f70472b = str;
    }

    @Nullable
    public final String a() {
        return this.f70472b;
    }

    @Nullable
    public final QueryDownloadEpisodesResult b() {
        if (TextUtils.isEmpty(this.f70472b)) {
            return null;
        }
        return (QueryDownloadEpisodesResult) l.b(this.f70472b, QueryDownloadEpisodesResult.class);
    }

    public final int c() {
        return this.f70471a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f70471a == fVar.f70471a && Intrinsics.areEqual(this.f70472b, fVar.f70472b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = Integer.hashCode(this.f70471a) * 31;
        String str = this.f70472b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "DownloadEpisodesInfo(shortPlayId=" + this.f70471a + ", episodes=" + this.f70472b + ')';
    }
}
