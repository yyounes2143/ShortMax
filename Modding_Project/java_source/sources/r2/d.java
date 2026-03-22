package r2;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import androidx.webkit.ProxyConfig;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.net.URL;
import k2.h;
/* compiled from: UriUtil.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f65479a = Uri.withAppendedPath((Uri) j4.a.a(ContactsContract.AUTHORITY_URI), "display_photo");

    public static AssetFileDescriptor a(ContentResolver contentResolver, Uri uri) {
        if (l(uri)) {
            try {
                return contentResolver.openAssetFileDescriptor(uri, "r");
            } catch (FileNotFoundException unused) {
            }
        }
        return null;
    }

    private static String b(boolean z10) {
        return "_data";
    }

    private static Uri c(boolean z10) {
        if (z10) {
            return MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
        }
        return MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    }

    private static String d(boolean z10) {
        return "_id";
    }

    public static String e(ContentResolver contentResolver, Uri uri) {
        boolean z10;
        Uri uri2;
        String str;
        String[] strArr;
        int columnIndexOrThrow;
        String type = contentResolver.getType(uri);
        String str2 = null;
        if (l(uri)) {
            if (type != null && type.startsWith("video/")) {
                z10 = true;
            } else {
                z10 = false;
            }
            if ("com.android.providers.media.documents".equals(uri.getAuthority())) {
                String documentId = DocumentsContract.getDocumentId(uri);
                h.g(documentId);
                String[] strArr2 = {documentId.split(":")[1]};
                uri2 = (Uri) h.g(c(z10));
                str = d(z10) + "=?";
                strArr = strArr2;
            } else {
                uri2 = uri;
                str = null;
                strArr = null;
            }
            Cursor query = contentResolver.query(uri2, new String[]{b(z10)}, str, strArr, null);
            if (query != null) {
                try {
                    if (query.moveToFirst() && (columnIndexOrThrow = query.getColumnIndexOrThrow(b(z10))) != -1) {
                        str2 = query.getString(columnIndexOrThrow);
                    }
                } finally {
                    query.close();
                }
            }
            return query != null ? str2 : str2;
        } else if (!m(uri)) {
            return null;
        } else {
            return uri.getPath();
        }
    }

    public static String f(Uri uri) {
        if (uri == null) {
            return null;
        }
        return uri.getScheme();
    }

    public static Uri g(int i10) {
        return new Uri.Builder().scheme("res").path(String.valueOf(i10)).build();
    }

    public static boolean h(Uri uri) {
        return "data".equals(f(uri));
    }

    public static boolean i(Uri uri) {
        return "asset".equals(f(uri));
    }

    public static boolean j(Uri uri) {
        String uri2 = uri.toString();
        if (!uri2.startsWith(MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString()) && !uri2.startsWith(MediaStore.Images.Media.INTERNAL_CONTENT_URI.toString())) {
            return false;
        }
        return true;
    }

    public static boolean k(Uri uri) {
        if (uri.getPath() == null || !l(uri) || !"com.android.contacts".equals(uri.getAuthority()) || uri.getPath().startsWith((String) j4.a.a(f65479a.getPath()))) {
            return false;
        }
        return true;
    }

    public static boolean l(Uri uri) {
        return "content".equals(f(uri));
    }

    public static boolean m(Uri uri) {
        return "file".equals(f(uri));
    }

    public static boolean n(Uri uri) {
        return "res".equals(f(uri));
    }

    public static boolean o(Uri uri) {
        String f10 = f(uri);
        if (!"https".equals(f10) && !ProxyConfig.MATCH_HTTP.equals(f10)) {
            return false;
        }
        return true;
    }

    public static boolean p(Uri uri) {
        return "android.resource".equals(f(uri));
    }

    public static URL q(Uri uri) {
        if (uri == null) {
            return null;
        }
        try {
            return new URL(uri.toString());
        } catch (MalformedURLException e10) {
            throw new RuntimeException(e10);
        }
    }
}
