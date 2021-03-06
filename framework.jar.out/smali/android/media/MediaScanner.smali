.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$1;,
        Landroid/media/MediaScanner$WplHandler;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$FileCacheEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String; = null

.field private static final ID3_GENRES:[Ljava/lang/String; = null

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String; = null

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"


# instance fields
.field private mAudioUri:Landroid/net/Uri;

.field private mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultGSMRingtoneFilename:Ljava/lang/String;

.field private mDefaultGSMRingtoneSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mExternalStoragePath:Ljava/lang/String;

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesUri:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMtpObjectHandle:I

.field private mNativeContext:I

.field private mOriginalCount:I

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoOriginalCount:I

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 126
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string v1, "date_modified"

    aput-object v1, v0, v5

    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 133
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 142
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "playlist_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 156
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v2

    const-string v1, "Classic Rock"

    aput-object v1, v0, v3

    const-string v1, "Country"

    aput-object v1, v0, v4

    const-string v1, "Dance"

    aput-object v1, v0, v5

    const-string v1, "Disco"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 344
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    .line 347
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultGSMRingtoneSet:Z

    .line 350
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    .line 352
    iput-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    .line 374
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 407
    iput-object v2, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 433
    new-instance v0, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v0, p0, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V

    iput-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 410
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 411
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 412
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 413
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 415
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 417
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 418
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/media/MediaScanner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$1900(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$1902(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$200(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultGSMRingtoneSet:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultGSMRingtoneSet:Z

    return p1
.end method

.method static synthetic access$2300(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultGSMRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$2502(Landroid/media/MediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$2600(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 117
    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 117
    invoke-direct/range {p0 .. p5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$400(Landroid/media/MediaScanner;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$600(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$800(Landroid/media/MediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 117
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method private addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z
    .locals 21
    .parameter "entry"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 1978
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 1979
    .local v15, entryLength:I
    :goto_0
    if-lez v15, :cond_0

    add-int/lit8 v3, v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 1982
    :cond_0
    const/4 v3, 0x3

    if-ge v15, v3, :cond_1

    const/4 v3, 0x0

    .line 2049
    :goto_1
    return v3

    .line 1983
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v15, v3, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1987
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 1988
    .local v13, ch1:C
    const/16 v3, 0x2f

    if-eq v13, v3, :cond_3

    invoke-static {v13}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_7

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_7

    :cond_3
    const/16 v16, 0x1

    .line 1991
    .local v16, fullPath:Z
    :goto_2
    if-nez v16, :cond_4

    .line 1992
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1997
    :cond_4
    const/4 v9, 0x0

    .line 2000
    .local v9, bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    const/4 v10, 0x0

    .line 2002
    .local v10, bestMatchLength:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 2003
    .local v17, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_5
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2004
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/MediaScanner$FileCacheEntry;

    .line 2005
    .local v12, cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v0, v12, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 2007
    .local v19, path:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2008
    move-object v9, v12

    .line 2019
    .end local v12           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v19           #path:Ljava/lang/String;
    :cond_6
    if-nez v9, :cond_9

    .line 2020
    const/4 v3, 0x0

    goto :goto_1

    .line 1988
    .end local v9           #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v10           #bestMatchLength:I
    .end local v16           #fullPath:Z
    .end local v17           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_7
    const/16 v16, 0x0

    goto :goto_2

    .line 2012
    .restart local v9       #bestMatch:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v10       #bestMatchLength:I
    .restart local v12       #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v16       #fullPath:Z
    .restart local v17       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    .restart local v19       #path:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 2013
    .local v18, matchLength:I
    move/from16 v0, v18

    if-le v0, v10, :cond_5

    .line 2014
    move-object v9, v12

    .line 2015
    move/from16 v10, v18

    goto :goto_3

    .line 2025
    .end local v12           #cacheEntry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v18           #matchLength:I
    .end local v19           #path:Ljava/lang/String;
    :cond_9
    :try_start_0
    iget-wide v3, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 2026
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    sget-object v5, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "_data=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v0, v9, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v7, v8

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2029
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_b

    .line 2030
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2031
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 2033
    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2035
    :cond_b
    iget-wide v3, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 2036
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2040
    .end local v11           #c:Landroid/database/Cursor;
    :cond_c
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 2041
    const-string v3, "play_order"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2042
    const-string v3, "audio_id"

    iget-wide v4, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2043
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v3, v0, v1}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2049
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 2044
    :catch_0
    move-exception v14

    .line 2045
    .local v14, e:Landroid/os/RemoteException;
    const-string v3, "MediaScanner"

    const-string v4, "RemoteException in MediaScanner.addPlayListEntry()"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2046
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private handleMultishots()V
    .locals 18

    .prologue
    .line 1426
    const-string v1, "external"

    invoke-static {v1}, Lcom/motorola/android/provider/MediaStoreExt$Images$MultishotsInfo;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 1427
    .local v15, multishotsUri:Landroid/net/Uri;
    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "distinct"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1429
    .local v2, newUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "multiburst_group_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1435
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1437
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1438
    .local v12, groupID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1439
    .local v6, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1440
    .local v8, sort:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1441
    .local v7, selectionArgs:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1442
    .local v11, findMain:Z
    const-string v6, "multiburst_group_id=?"

    .line 1443
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .end local v7           #selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object v12, v7, v1

    .line 1444
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    const-string/jumbo v8, "sequence_number ASC "

    .line 1445
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "shooting_mode"

    aput-object v4, v5, v1

    move-object v4, v15

    invoke-interface/range {v3 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1450
    .local v10, c1:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1452
    :cond_1
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1453
    .local v16, shooting_mode:I
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_6

    .line 1455
    const/4 v11, 0x1

    .line 1459
    :goto_0
    if-nez v11, :cond_2

    .line 1460
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1461
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1462
    .local v13, imageID:I
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1463
    .local v17, values:Landroid/content/ContentValues;
    const-string/jumbo v1, "shooting_mode"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1464
    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1466
    .local v14, imageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    int-to-long v3, v13

    invoke-static {v14, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v1, v3, v0, v4, v5}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1470
    .end local v13           #imageID:I
    .end local v14           #imageUri:Landroid/net/Uri;
    .end local v16           #shooting_mode:I
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_2
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1471
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1473
    .end local v6           #where:Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v8           #sort:Ljava/lang/String;
    .end local v10           #c1:Landroid/database/Cursor;
    .end local v11           #findMain:Z
    .end local v12           #groupID:Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1477
    .end local v9           #c:Landroid/database/Cursor;
    :cond_5
    :goto_1
    return-void

    .line 1458
    .restart local v6       #where:Ljava/lang/String;
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    .restart local v8       #sort:Ljava/lang/String;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v10       #c1:Landroid/database/Cursor;
    .restart local v11       #findMain:Z
    .restart local v12       #groupID:Ljava/lang/String;
    .restart local v16       #shooting_mode:I
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1474
    .end local v6           #where:Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v8           #sort:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #c1:Landroid/database/Cursor;
    .end local v11           #findMain:Z
    .end local v12           #groupID:Ljava/lang/String;
    .end local v16           #shooting_mode:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .parameter "path"
    .parameter "directories"

    .prologue
    .line 1411
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 1412
    aget-object v0, p2, v1

    .line 1413
    .local v0, directory:Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1417
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1419
    const/4 v2, 0x1

    .line 1422
    .end local v0           #directory:Ljava/lang/String;
    :goto_1
    return v2

    .line 1411
    .restart local v0       #directory:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1422
    .end local v0           #directory:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 3
    .parameter "volumeName"

    .prologue
    const/4 v2, 0x1

    .line 1726
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1728
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1729
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1730
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1731
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1732
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1734
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1736
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 1737
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 1738
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1740
    iput-boolean v2, p0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    .line 1742
    :cond_0
    return-void
.end method

.method private isDBEmpty()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1304
    const/4 v7, 0x0

    .line 1305
    .local v7, empty:Z
    const/4 v6, 0x0

    .line 1307
    .local v6, c1:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1308
    if-eqz v6, :cond_2

    move v0, v8

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1309
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    move v7, v8

    .line 1312
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 1313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1316
    :cond_1
    return v7

    :cond_2
    move v0, v9

    .line 1308
    goto :goto_0

    :cond_3
    move v7, v9

    .line 1309
    goto :goto_1

    .line 1312
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private isDrmEnabled()Z
    .locals 2

    .prologue
    .line 436
    const-string v1, "drm.service.enabled"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1830
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1831
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    .line 1860
    :cond_0
    :goto_0
    return v1

    .line 1836
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1837
    .local v7, lastSlash:I
    if-ltz v7, :cond_3

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1839
    add-int/lit8 v0, v7, 0x1

    const-string v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1846
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1847
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1851
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 1852
    .local v8, length:I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_2

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-ne v8, v9, :cond_3

    add-int/lit8 v2, v7, 0x1

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .end local v8           #length:I
    :cond_3
    move v1, v4

    .line 1860
    goto :goto_0
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1864
    if-nez p0, :cond_0

    .line 1890
    :goto_0
    return v3

    .line 1867
    :cond_0
    const-string v5, "/."

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    move v3, v4

    goto :goto_0

    .line 1871
    :cond_1
    const/4 v1, 0x1

    .line 1872
    .local v1, offset:I
    :goto_1
    if-ltz v1, :cond_4

    .line 1873
    const/16 v5, 0x2f

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1874
    .local v2, slashIndex:I
    if-le v2, v1, :cond_3

    .line 1875
    add-int/lit8 v2, v2, 0x1

    .line 1876
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1877
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 1879
    goto :goto_0

    .line 1882
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0           #file:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1883
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 1885
    goto :goto_0

    .line 1888
    .end local v0           #file:Ljava/io/File;
    :cond_3
    move v1, v2

    .line 1889
    goto :goto_1

    .line 1890
    .end local v2           #slashIndex:I
    :cond_4
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 1949
    const/4 v10, 0x0

    .line 1950
    .local v10, result:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1951
    .local v8, end1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 1953
    .local v9, end2:I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 1954
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 1955
    .local v11, slash1:I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 1956
    .local v12, slash2:I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 1957
    .local v6, backSlash1:I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 1958
    .local v7, backSlash2:I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 1959
    .local v2, start1:I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 1960
    .local v4, start2:I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 1961
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 1962
    :goto_4
    sub-int v5, v8, v2

    .line 1963
    .local v5, length:I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 1971
    .end local v2           #start1:I
    .end local v4           #start2:I
    .end local v5           #length:I
    .end local v6           #backSlash1:I
    .end local v7           #backSlash2:I
    .end local v11           #slash1:I
    .end local v12           #slash2:I
    :cond_0
    return v10

    .restart local v6       #backSlash1:I
    .restart local v7       #backSlash2:I
    .restart local v11       #slash1:I
    .restart local v12       #slash2:I
    :cond_1
    move v2, v6

    .line 1958
    goto :goto_1

    .restart local v2       #start1:I
    :cond_2
    move v4, v7

    .line 1959
    goto :goto_2

    .line 1960
    .restart local v4       #start2:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1961
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1964
    .restart local v5       #length:I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    add-int/lit8 v10, v10, 0x1

    .line 1966
    add-int/lit8 v8, v2, -0x1

    .line 1967
    add-int/lit8 v9, v4, -0x1

    .line 1969
    goto :goto_0
.end method

.method private final native native_crashfile_beginscan()V
.end method

.method private final native native_crashfile_endscan()V
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 37
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1571
    .local v15, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    const/16 v5, 0x1f4

    .line 1572
    .local v5, MAX_DELETE_COUNT:I
    new-array v6, v5, [J

    .line 1573
    .local v6, bulkDeleteIds:[J
    const/16 v24, 0x0

    .line 1574
    .local v24, pendingDeleteCount:I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1575
    .local v20, missDirsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1576
    .local v7, deleteTotal:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 1579
    .local v26, startTime:J
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_d

    .line 1580
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1581
    .local v9, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v0, v9, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 1584
    .local v23, path:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v18

    .line 1585
    .local v18, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v18, :cond_2

    const/4 v11, 0x0

    .line 1586
    .local v11, fileType:I
    :goto_1
    invoke-static {v11}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v14

    .line 1587
    .local v14, isPlayList:Z
    const/4 v12, 0x0

    .line 1588
    .local v12, inMissDir:Z
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v33

    if-lez v33, :cond_1

    .line 1589
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v8, v0, [Ljava/lang/String;

    .line 1590
    .local v8, dirs:[Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .end local v8           #dirs:[Ljava/lang/String;
    check-cast v8, [Ljava/lang/String;

    .line 1591
    .restart local v8       #dirs:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v8}, Landroid/media/MediaScanner;->inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    .line 1593
    .end local v8           #dirs:[Ljava/lang/String;
    :cond_1
    if-eqz v12, :cond_3

    if-nez v14, :cond_3

    .line 1594
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1585
    .end local v11           #fileType:I
    .end local v12           #inMissDir:Z
    .end local v14           #isPlayList:Z
    :cond_2
    move-object/from16 v0, v18

    iget v11, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_1

    .line 1600
    .restart local v11       #fileType:I
    .restart local v12       #inMissDir:Z
    .restart local v14       #isPlayList:Z
    :cond_3
    const/4 v10, 0x0

    .line 1603
    .local v10, fileMissing:Z
    if-eqz v12, :cond_7

    .line 1604
    const/4 v10, 0x1

    .line 1623
    :cond_4
    :goto_2
    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 1624
    const/4 v13, 0x0

    .line 1625
    .local v13, isMissDir:Z
    const-string v33, "/"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 1626
    .local v17, lastDot:I
    if-lez v17, :cond_a

    .line 1627
    const/16 v33, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 1628
    .local v22, parentDir:Ljava/lang/String;
    const-string v33, "/mnt"

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 1629
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1630
    .local v21, pDir:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v28

    .line 1631
    .local v28, subs:[Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_5

    if-eqz v28, :cond_5

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v33, v0

    if-nez v33, :cond_a

    .line 1633
    :cond_5
    const/4 v13, 0x1

    .line 1634
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 1635
    .local v16, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_9

    .line 1636
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1637
    .local v19, missD:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 1638
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1607
    .end local v13           #isMissDir:Z
    .end local v16           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v17           #lastDot:I
    .end local v19           #missD:Ljava/lang/String;
    .end local v21           #pDir:Ljava/io/File;
    .end local v22           #parentDir:Ljava/lang/String;
    .end local v28           #subs:[Ljava/lang/String;
    :cond_7
    iget-boolean v0, v9, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    move/from16 v33, v0

    if-nez v33, :cond_4

    iget v0, v9, Landroid/media/MediaScanner$FileCacheEntry;->mFormat:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v33

    if-nez v33, :cond_4

    .line 1608
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 1610
    const/4 v10, 0x1

    goto :goto_2

    .line 1615
    :cond_8
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1616
    .local v29, testFile:Ljava/io/File;
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v33

    if-nez v33, :cond_4

    .line 1617
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 1641
    .end local v29           #testFile:Ljava/io/File;
    .restart local v13       #isMissDir:Z
    .restart local v16       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v17       #lastDot:I
    .restart local v21       #pDir:Ljava/io/File;
    .restart local v22       #parentDir:Ljava/lang/String;
    .restart local v28       #subs:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    .end local v16           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v21           #pDir:Ljava/io/File;
    .end local v22           #parentDir:Ljava/lang/String;
    .end local v28           #subs:[Ljava/lang/String;
    :cond_a
    if-eqz v13, :cond_b

    if-nez v14, :cond_b

    .line 1646
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 1653
    .end local v13           #isMissDir:Z
    .end local v17           #lastDot:I
    :cond_b
    if-eqz v10, :cond_0

    .line 1658
    if-eqz v14, :cond_c

    .line 1659
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 1660
    .local v31, values:Landroid/content/ContentValues;
    const-string v33, "_data"

    const-string v34, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    const-string v33, "date_modified"

    const/16 v34, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    move-object/from16 v34, v0

    iget-wide v0, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v35, v0

    invoke-static/range {v34 .. v36}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v34

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v31

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1666
    .end local v31           #values:Landroid/content/ContentValues;
    :cond_c
    add-int/lit8 v25, v24, 0x1

    .end local v24           #pendingDeleteCount:I
    .local v25, pendingDeleteCount:I
    iget-wide v0, v9, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v33, v0

    aput-wide v33, v6, v24

    .line 1667
    move/from16 v0, v25

    if-ne v0, v5, :cond_14

    .line 1668
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaScanner;->bulkDelete([JI)I

    move-result v33

    add-int v7, v7, v33

    .line 1669
    const/16 v24, 0x0

    .line 1671
    .end local v25           #pendingDeleteCount:I
    .restart local v24       #pendingDeleteCount:I
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 1683
    .end local v9           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v10           #fileMissing:Z
    .end local v11           #fileType:I
    .end local v12           #inMissDir:Z
    .end local v14           #isPlayList:Z
    .end local v18           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v23           #path:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 1684
    .restart local v16       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_f

    .line 1685
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1686
    .restart local v19       #missD:Ljava/lang/String;
    if-eqz v19, :cond_e

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v33

    const-string v34, "delete_file"

    const-string v35, "0"

    invoke-virtual/range {v33 .. v35}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v30

    .line 1688
    .local v30, uri:Landroid/net/Uri;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "_data LIKE \'"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/%\'"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1689
    .local v32, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v33

    add-int v7, v7, v33

    goto :goto_5

    .line 1695
    .end local v19           #missD:Ljava/lang/String;
    .end local v30           #uri:Landroid/net/Uri;
    .end local v32           #where:Ljava/lang/String;
    :cond_f
    if-lez v24, :cond_10

    .line 1696
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaScanner;->bulkDelete([JI)I

    move-result v33

    add-int v7, v7, v33

    .line 1698
    :cond_10
    const-string v33, "MediaScanner"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "delete obsolete record total = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " time="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v35

    sub-long v35, v35, v26

    invoke-virtual/range {v34 .. v36}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " ms"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    move/from16 v33, v0

    if-eqz v33, :cond_11

    .line 1703
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1706
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    move/from16 v33, v0

    if-nez v33, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    const-string v34, "external"

    invoke-static/range {v34 .. v34}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner;->mVideoOriginalCount:I

    move/from16 v33, v0

    if-nez v33, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    const-string v34, "external"

    invoke-static/range {v34 .. v34}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_12

    .line 1709
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1713
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    const-string v34, "external"

    invoke-static/range {v34 .. v34}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_13

    .line 1715
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->handleMultishots()V

    .line 1720
    :cond_13
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1721
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1722
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1723
    return-void

    .end local v16           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v24           #pendingDeleteCount:I
    .restart local v9       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .restart local v10       #fileMissing:Z
    .restart local v11       #fileType:I
    .restart local v12       #inMissDir:Z
    .restart local v14       #isPlayList:Z
    .restart local v18       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v23       #path:Ljava/lang/String;
    .restart local v25       #pendingDeleteCount:I
    :cond_14
    move/from16 v24, v25

    .end local v25           #pendingDeleteCount:I
    .restart local v24       #pendingDeleteCount:I
    goto/16 :goto_4
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 21
    .parameter "filePath"
    .parameter "prescanFiles"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1321
    const/16 v19, 0x0

    .line 1322
    .local v19, c:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 1323
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1325
    .local v5, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    if-nez v1, :cond_4

    .line 1326
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    .line 1330
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    .line 1331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1337
    :goto_1
    if-eqz p1, :cond_6

    const-string v1, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1339
    const/4 v5, 0x0

    .line 1350
    :cond_0
    :goto_2
    if-eqz p2, :cond_a

    .line 1353
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v3, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1356
    if-eqz v19, :cond_a

    .line 1358
    if-nez v4, :cond_8

    .line 1359
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 1363
    :cond_1
    :goto_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1364
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1365
    .local v7, rowId:J
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1366
    .local v9, path:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1367
    .local v12, format:I
    const/4 v1, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1372
    .local v10, lastModified:J
    if-eqz v9, :cond_1

    const-string v1, "/"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1373
    move-object/from16 v20, v9

    .line 1374
    .local v20, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v1, :cond_2

    .line 1375
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 1377
    :cond_2
    new-instance v6, Landroid/media/MediaScanner$FileCacheEntry;

    invoke-direct/range {v6 .. v12}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(JLjava/lang/String;JI)V

    .line 1379
    .local v6, entry:Landroid/media/MediaScanner$FileCacheEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 1388
    .end local v6           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v7           #rowId:J
    .end local v9           #path:Ljava/lang/String;
    .end local v10           #lastModified:J
    .end local v12           #format:I
    .end local v20           #key:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v19, :cond_3

    .line 1389
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 1328
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 1333
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 1342
    :cond_6
    if-eqz p1, :cond_0

    .line 1344
    const-string v4, "_data=?"

    .line 1345
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .end local v5           #selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v5, v1

    .restart local v5       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_2

    .line 1359
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 1361
    :cond_8
    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->isDBEmpty()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    goto :goto_4

    .line 1382
    :cond_9
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1383
    const/16 v19, 0x0

    .line 1388
    :cond_a
    if-eqz v19, :cond_b

    .line 1389
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1394
    :cond_b
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1395
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v15, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v13 .. v18}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1396
    if-eqz v19, :cond_c

    .line 1397
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1398
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1401
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/media/MediaScanner;->mVideoOriginalCount:I

    .line 1402
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    sget-object v15, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v13 .. v18}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1403
    if-eqz v19, :cond_d

    .line 1404
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/media/MediaScanner;->mVideoOriginalCount:I

    .line 1405
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1408
    :cond_d
    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 10
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2053
    const/4 v8, 0x0

    .line 2055
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2056
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2057
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x2000

    invoke-direct {v9, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2059
    .end local v8           #reader:Ljava/io/BufferedReader;
    .local v9, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 2060
    .local v1, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2061
    .local v5, index:I
    :goto_0
    if-eqz v1, :cond_1

    .line 2063
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-eq v0, v2, :cond_0

    .line 2064
    invoke-virtual {p4}, Landroid/content/ContentValues;->clear()V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2065
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    add-int/lit8 v5, v5, 0x1

    .line 2068
    :cond_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v8, v9

    .line 2075
    .end local v1           #line:Ljava/lang/String;
    .end local v5           #index:I
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v8, :cond_3

    .line 2076
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2081
    .end local v7           #f:Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2077
    .restart local v7       #f:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 2078
    .local v6, e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2071
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #f:Ljava/io/File;
    :catch_1
    move-exception v6

    .line 2072
    .restart local v6       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v0, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2075
    if-eqz v8, :cond_3

    .line 2076
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2077
    :catch_2
    move-exception v6

    .line 2078
    const-string v0, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2074
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 2075
    :goto_3
    if-eqz v8, :cond_4

    .line 2076
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2079
    :cond_4
    :goto_4
    throw v0

    .line 2077
    :catch_3
    move-exception v6

    .line 2078
    .restart local v6       #e:Ljava/io/IOException;
    const-string v2, "MediaScanner"

    const-string v3, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2074
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #f:Ljava/io/File;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 2071
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    move-object v8, v9

    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileCacheEntry;)V
    .locals 16
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2180
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 2181
    .local v7, path:Ljava/lang/String;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2182
    .local v12, values:Landroid/content/ContentValues;
    const/16 v13, 0x2f

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 2183
    .local v3, lastSlash:I
    if-gez v3, :cond_0

    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bad path "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 2185
    :cond_0
    move-object/from16 v0, p1

    iget-wide v9, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 2188
    .local v9, rowId:J
    const-string v13, "name"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2189
    .local v6, name:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 2190
    const-string/jumbo v13, "title"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2191
    if-nez v6, :cond_1

    .line 2193
    const/16 v13, 0x2e

    invoke-virtual {v7, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 2194
    .local v2, lastDot:I
    if-gez v2, :cond_3

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 2199
    .end local v2           #lastDot:I
    :cond_1
    :goto_0
    const-string v13, "name"

    invoke-virtual {v12, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    const-string v13, "date_modified"

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2202
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-nez v13, :cond_4

    .line 2203
    const-string v13, "_data"

    invoke-virtual {v12, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2204
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v13, v14, v12}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 2205
    .local v11, uri:Landroid/net/Uri;
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 2206
    const-string v13, "members"

    invoke-static {v11, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2216
    .local v5, membersUri:Landroid/net/Uri;
    :goto_1
    const/4 v13, 0x0

    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2217
    .local v8, playListDirectory:Ljava/lang/String;
    invoke-static {v7}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v4

    .line 2218
    .local v4, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v4, :cond_5

    const/4 v1, 0x0

    .line 2220
    .local v1, fileType:I
    :goto_2
    const/16 v13, 0x29

    if-ne v1, v13, :cond_6

    .line 2221
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5, v12}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 2227
    :cond_2
    :goto_3
    return-void

    .line 2194
    .end local v1           #fileType:I
    .end local v4           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .end local v5           #membersUri:Landroid/net/Uri;
    .end local v8           #playListDirectory:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    .restart local v2       #lastDot:I
    :cond_3
    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v7, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 2208
    .end local v2           #lastDot:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-static {v13, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 2209
    .restart local v11       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v11, v12, v14, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2212
    const-string v13, "members"

    invoke-static {v11, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2213
    .restart local v5       #membersUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v5, v14, v15}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2218
    .restart local v4       #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v8       #playListDirectory:Ljava/lang/String;
    :cond_5
    iget v1, v4, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_2

    .line 2222
    .restart local v1       #fileType:I
    :cond_6
    const/16 v13, 0x2a

    if-ne v1, v13, :cond_7

    .line 2223
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5, v12}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_3

    .line 2224
    :cond_7
    const/16 v13, 0x2b

    if-ne v1, v13, :cond_2

    .line 2225
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2230
    iget-object v2, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2231
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/MediaScanner$FileCacheEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2232
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScanner$FileCacheEntry;

    .line 2234
    .local v0, entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-boolean v2, v0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-eqz v2, :cond_0

    .line 2235
    invoke-direct {p0, v0}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileCacheEntry;)V

    goto :goto_0

    .line 2238
    .end local v0           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_1
    return-void
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 12
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 2084
    const/4 v10, 0x0

    .line 2086
    .local v10, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2087
    .local v8, f:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2088
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x2000

    invoke-direct {v11, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2090
    .end local v10           #reader:Ljava/io/BufferedReader;
    .local v11, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 2091
    .local v9, line:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2092
    .local v5, index:I
    :goto_0
    if-eqz v9, :cond_1

    .line 2094
    const-string v0, "File"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2095
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 2096
    .local v7, equals:I
    if-lez v7, :cond_0

    .line 2097
    invoke-virtual/range {p4 .. p4}, Landroid/content/ContentValues;->clear()V

    .line 2098
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaScanner;->addPlayListEntry(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2099
    add-int/lit8 v5, v5, 0x1

    .line 2102
    .end local v7           #equals:I
    :cond_0
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v10, v11

    .line 2109
    .end local v5           #index:I
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v10, :cond_3

    .line 2110
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2115
    .end local v8           #f:Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2111
    .restart local v8       #f:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 2112
    .local v6, e:Ljava/io/IOException;
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2105
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #f:Ljava/io/File;
    :catch_1
    move-exception v6

    .line 2106
    .restart local v6       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2109
    if-eqz v10, :cond_3

    .line 2110
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2111
    :catch_2
    move-exception v6

    .line 2112
    const-string v0, "MediaScanner"

    const-string v1, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2108
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    .line 2109
    :goto_3
    if-eqz v10, :cond_4

    .line 2110
    :try_start_5
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2113
    :cond_4
    :goto_4
    throw v0

    .line 2111
    :catch_3
    move-exception v6

    .line 2112
    .restart local v6       #e:Ljava/io/IOException;
    const-string v1, "MediaScanner"

    const-string v2, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2108
    .end local v6           #e:Ljava/io/IOException;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v8       #f:Ljava/io/File;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 2105
    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v11       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    move-object v10, v11

    .end local v11           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"

    .prologue
    .line 2157
    const/4 v2, 0x0

    .line 2159
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2160
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2161
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2163
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v2, v3

    .line 2171
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 2172
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2177
    .end local v1           #f:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2173
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2174
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2165
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2166
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2171
    if-eqz v2, :cond_1

    .line 2172
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2173
    :catch_2
    move-exception v0

    .line 2174
    .local v0, e:Ljava/io/IOException;
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2167
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2168
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2171
    if-eqz v2, :cond_1

    .line 2172
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2173
    :catch_4
    move-exception v0

    .line 2174
    const-string v4, "MediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2170
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2171
    :goto_3
    if-eqz v2, :cond_2

    .line 2172
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2175
    :cond_2
    :goto_4
    throw v4

    .line 2173
    :catch_5
    move-exception v0

    .line 2174
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "MediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2170
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2167
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 2165
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 15

    .prologue
    const/4 v2, 0x0

    .line 1480
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1484
    .local v9, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1486
    .local v8, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    .line 1487
    .local v11, files:[Ljava/lang/String;
    if-nez v11, :cond_0

    .line 1488
    new-array v11, v2, [Ljava/lang/String;

    .line 1490
    :cond_0
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    array-length v0, v11

    if-ge v13, v0, :cond_2

    .line 1491
    aget-object v0, v11, v13

    const-string v1, ".thumbdata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1493
    .local v12, fullPathString:Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1490
    .end local v12           #fullPathString:Ljava/lang/String;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1498
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1504
    .local v6, c:Landroid/database/Cursor;
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1507
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1508
    .restart local v12       #fullPathString:Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1509
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1513
    .end local v12           #fullPathString:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1519
    .local v7, c1:Landroid/database/Cursor;
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pruneDeadVideoThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1522
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1523
    .restart local v12       #fullPathString:Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1524
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1526
    .end local v12           #fullPathString:Ljava/lang/String;
    :cond_6
    if-eqz v7, :cond_7

    .line 1527
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1529
    :cond_7
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1533
    .local v10, fileToDelete:Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1534
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1538
    .end local v10           #fileToDelete:Ljava/lang/String;
    :cond_8
    :try_start_2
    const-string v0, "MediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    if-eqz v6, :cond_9

    .line 1540
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1543
    :cond_9
    if-eqz v7, :cond_a

    .line 1544
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1551
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #c1:Landroid/database/Cursor;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_a
    :goto_2
    return-void

    .line 1548
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    .prologue
    .line 421
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 424
    const-string v0, "ro.config.gsm_ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultGSMRingtoneFilename:Ljava/lang/String;

    .line 427
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 429
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 431
    return-void
.end method


# virtual methods
.method bulkDelete([JI)I
    .locals 9
    .parameter "Ids"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1555
    const-string v4, "_id in ("

    .line 1556
    .local v4, where:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1557
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v5, p2, -0x1

    if-ge v1, v5, :cond_0

    .line 1558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, p1, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1557
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1560
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1561
    .local v2, startTime:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, p1, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1562
    iget-object v5, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v6, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "delete_file"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1563
    .local v0, deleted:I
    const-string v5, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bulkDelete deleted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    return v0
.end method

.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 2264
    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2265
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2266
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 2259
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 2260
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    .line 1746
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1747
    .local v9, start:J
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1748
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1750
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_crashfile_beginscan()V

    .line 1752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1756
    .local v5, prescan:J
    new-instance v11, Landroid/media/MediaInserter;

    iget-object v12, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/16 v13, 0x64

    invoke-direct {v11, v12, v13}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;I)V

    iput-object v11, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1759
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v4, v11, :cond_0

    .line 1760
    aget-object v11, p1, v4

    iget-object v12, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {p0, v11, v12}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1759
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1765
    :cond_0
    iget-object v11, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v11}, Landroid/media/MediaInserter;->flushAll()V

    .line 1766
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1770
    .local v7, scan:J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1774
    .local v2, end:J
    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " prescan time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v5, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    scan time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v7, v5

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "postscan time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v2, v7

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "   total time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v2, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  total scan audio number is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    iget v13, v13, Landroid/media/MediaScanner$MyMediaScannerClient;->mTotalAudioNum:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  total scan image number is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    iget v13, v13, Landroid/media/MediaScanner$MyMediaScannerClient;->mTotalImageNum:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  total scan video number is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    iget v13, v13, Landroid/media/MediaScanner$MyMediaScannerClient;->mTotalVideoNum:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const-string v11, "MediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  total scan other type number is : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    iget v13, v13, Landroid/media/MediaScanner$MyMediaScannerClient;->mTotalOtherNum:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1795
    const-string v11, "MediaScanner"

    const-string v12, "clear crash file in scanDirectories"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_crashfile_endscan()V

    .line 1799
    .end local v2           #end:J
    .end local v4           #i:I
    .end local v5           #prescan:J
    .end local v7           #scan:J
    .end local v9           #start:J
    :goto_1
    return-void

    .line 1785
    :catch_0
    move-exception v1

    .line 1787
    .local v1, e:Landroid/database/SQLException;
    :try_start_1
    const-string v11, "MediaScanner"

    const-string v12, "SQLException in MediaScanner.scan()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1795
    const-string v11, "MediaScanner"

    const-string v12, "clear crash file in scanDirectories"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_crashfile_endscan()V

    goto :goto_1

    .line 1788
    .end local v1           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 1790
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string v11, "MediaScanner"

    const-string v12, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1795
    const-string v11, "MediaScanner"

    const-string v12, "clear crash file in scanDirectories"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_crashfile_endscan()V

    goto :goto_1

    .line 1791
    .end local v1           #e:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v1

    .line 1792
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v11, "MediaScanner"

    const-string v12, "RemoteException in MediaScanner.scan()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1795
    const-string v11, "MediaScanner"

    const-string v12, "clear crash file in scanDirectories"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_crashfile_endscan()V

    goto :goto_1

    .line 1795
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v11

    const-string v12, "MediaScanner"

    const-string v13, "clear crash file in scanDirectories"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_crashfile_endscan()V

    throw v11
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 20
    .parameter "path"
    .parameter "volumeName"
    .parameter "objectHandle"
    .parameter "format"

    .prologue
    .line 1894
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1895
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v17

    .line 1896
    .local v17, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-nez v17, :cond_0

    const/4 v15, 0x0

    .line 1897
    .local v15, fileType:I
    :goto_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1898
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    .line 1900
    .local v5, lastModifiedSeconds:J
    invoke-static {v15}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v15}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v15}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v15}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v15}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1905
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1906
    .local v18, values:Landroid/content/ContentValues;
    const-string v2, "_size"

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1907
    const-string v2, "date_modified"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1909
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v2

    .line 1910
    .local v19, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id=?"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1945
    .end local v18           #values:Landroid/content/ContentValues;
    .end local v19           #whereArgs:[Ljava/lang/String;
    :goto_1
    return-void

    .line 1896
    .end local v5           #lastModifiedSeconds:J
    .end local v14           #file:Ljava/io/File;
    .end local v15           #fileType:I
    :cond_0
    move-object/from16 v0, v17

    iget v15, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_0

    .line 1912
    .restart local v5       #lastModifiedSeconds:J
    .restart local v14       #file:Ljava/io/File;
    .restart local v15       #fileType:I
    .restart local v18       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    .line 1913
    .local v12, e:Landroid/os/RemoteException;
    const-string v2, "MediaScanner"

    const-string v3, "RemoteException in scanMtpFile"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1918
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_1
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1920
    :try_start_1
    invoke-static {v15}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1922
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1924
    move-object/from16 v16, p1

    .line 1925
    .local v16, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v2, :cond_2

    .line 1926
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 1928
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/MediaScanner$FileCacheEntry;

    .line 1929
    .local v13, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-eqz v13, :cond_3

    .line 1930
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileCacheEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1943
    .end local v13           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v16           #key:Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    goto :goto_1

    .line 1934
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1937
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v7

    const/16 v3, 0x3001

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    const/4 v9, 0x1

    :goto_3
    const/4 v10, 0x1

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1940
    :catch_1
    move-exception v12

    .line 1941
    .restart local v12       #e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "MediaScanner"

    const-string v3, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1943
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    goto :goto_1

    .line 1937
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 1943
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    throw v2
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "path"
    .parameter "volumeName"
    .parameter "mimeType"

    .prologue
    .line 1804
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/MediaScanner;->initialize(Ljava/lang/String;)V

    .line 1805
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1807
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1808
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 1823
    const-string v1, "MediaScanner"

    const-string v2, "clear crash file in scanSingleFile"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_crashfile_endscan()V

    .end local v11           #file:Ljava/io/File;
    :goto_0
    return-object v0

    .line 1811
    .restart local v11       #file:Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    .line 1813
    .local v3, lastModifiedSeconds:J
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_crashfile_beginscan()V

    .line 1816
    iget-object v0, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 1823
    const-string v1, "MediaScanner"

    const-string v2, "clear crash file in scanSingleFile"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_crashfile_endscan()V

    goto :goto_0

    .line 1818
    .end local v3           #lastModifiedSeconds:J
    .end local v11           #file:Ljava/io/File;
    :catch_0
    move-exception v10

    .line 1819
    .local v10, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MediaScanner"

    const-string v1, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1820
    const/4 v0, 0x0

    .line 1823
    const-string v1, "MediaScanner"

    const-string v2, "clear crash file in scanSingleFile"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_crashfile_endscan()V

    goto :goto_0

    .line 1823
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    const-string v1, "MediaScanner"

    const-string v2, "clear crash file in scanSingleFile"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_crashfile_endscan()V

    throw v0
.end method

.method public native setLocale(Ljava/lang/String;)V
.end method
